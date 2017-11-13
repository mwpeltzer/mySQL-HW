// requires mysql and inquirer node packages
var mysql = require("mysql");
var inquirer = require("inquirer");


var connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
    // Your username
    user: "root",

    // Your password
    password: "",
    database: "bamazon"
});

var currentQty = "";
var currentItem = "";
var qtyRequested = "";
var currentPrice = "";

function productSearch() {
    inquirer.prompt({
            name: "item_id",
            type: "input",
            message: "What is the ID of the item you would like to purchase?"
        })
        .then(function(answer) {
            var query = "SELECT product_name, department_name, price, stock_quantity FROM products WHERE ?";

            connection.query(query, { item_id: answer.item_id }, function(err, res) {

                for (var i = 0; i < res.length; i++) {
                    currentQty = res[i].stock_quantity;
                    currentItem = res[i].product_name;
                    currentPrice = res[i].price
                    console.log(currentQty)
                    console.log(currentItem)
                    console.log("Product: " + res[i].product_name + " || Department: " + res[i].department_name + " || Price: " + res[i].price + " || Quantity: " + res[i].stock_quantity);
                }
                QtyDesired();
            });
        });
}

productSearch();

function QtyDesired() {
    inquirer.prompt({
            name: "qty_req",
            type: "input",
            message: "How many items would you like to purchase?"
        })
        .then(function(answer) {
            qtyRequested = answer.qty_req;
            if (qtyRequested > currentQty) {
                console.log("We are out of that item!");
            } else {
                currentQty = currentQty - qtyRequested;
                console.log(currentQty);
                updateProduct();
                shoppingTotal();
            }
        });
}

function updateProduct() {
    var query = connection.query(
        "UPDATE products SET ? WHERE ?", [{
                stock_quantity: currentQty
            },
            {
                product_name: currentItem
            }
        ],
        function(err, res) {
            console.log(res.affectedRows + " products updated \n");
        }
    );
}

function shoppingTotal() {
    console.log("Amount You Owe: $" + qtyRequested + currentPrice);
}