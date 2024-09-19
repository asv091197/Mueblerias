let totalPrice = 0;

// Agregar en la tabla
function addToCart(name, price) {
    const cartTable = document.getElementById('cart-table').getElementsByTagName('tbody')[0];

    // Crear una coluna 
    const row = cartTable.insertRow();
    const nameCell = row.insertCell(0);
    const priceCell = row.insertCell(1);
    const actionCell = row.insertCell(2);

    // 
    nameCell.innerHTML = name;
    priceCell.innerHTML = '$' + parseFloat(price).toFixed(2);

    //Agrega el boton eliminar
    const removeButton = document.createElement('button');
    removeButton.className = 'btn btn-danger';
    removeButton.innerHTML = 'Eliminar';
    removeButton.onclick = function () {
        removeFromCart(row, price);
    };
    actionCell.appendChild(removeButton);

    // Actualizar el total price
    totalPrice += parseFloat(price);
    document.getElementById('total-price').innerHTML = totalPrice.toFixed(2);
}

// Remove an item from the cart
function removeFromCart(row, price) {
    // Remove the row from the table
    row.parentNode.removeChild(row);

    // Update total price
    totalPrice -= parseFloat(price);
    document.getElementById('total-price').innerHTML = totalPrice.toFixed(2);
}