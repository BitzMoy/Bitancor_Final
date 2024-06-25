<?php
include('../conn/conn.php');

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $menuID = $_POST['tbl_menu_id'];
    $updateMenuName = $_POST['menu_name'];
    $updatePrice = $_POST['price'];
    $updateDescription = $_POST['description'];

    
    if ($_FILES['image']['tmp_name'] != "") {
        $targetDir = "../images/";
        $targetFile = $targetDir . basename($_FILES['image']['name']);
        move_uploaded_file($_FILES['image']['tmp_name'], $targetFile);

        
        $stmt = $conn->prepare("UPDATE tbl_menu SET menu_name = ?, price = ?, description = ?, image = ?  WHERE tbl_menu_id = ?");
        $stmt->execute([$updateMenuName, $updatePrice, $updateDescription, $_FILES['image']['name'], $menuID]);
    } else {
        $stmt = $conn->prepare("UPDATE tbl_menu SET menu_name = ?, price = ?, description = ? WHERE tbl_menu_id = ?");
        $stmt->execute([$updateMenuName, $updatePrice, $updateDescription, $menuID]);
    }

    header("location: http://localhost/food-menu/admin.php");
    exit();
}
?>
