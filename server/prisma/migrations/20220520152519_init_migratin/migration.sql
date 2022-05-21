-- CreateTable
CREATE TABLE `borrel` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `userId` VARCHAR(255),
    `activeProductsId` VARCHAR(255),
    `internal` VARCHAR(255),
    `theme` VARCHAR(255),
    `date` VARCHAR(255),

    INDEX `Active_products_id`(`activeProductsId`),
    INDEX `User_id`(`userId`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `borrel_transactions` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `borrelId` INTEGER NOT NULL,
    `timestamp` VARCHAR(255) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `borrel_transactions_row` (
    `transactionId` INTEGER NOT NULL AUTO_INCREMENT,
    `productId` VARCHAR(255),
    `amount` VARCHAR(255),

    INDEX `Product_id`(`productId`),
    INDEX `transaction_id`(`transactionId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `category` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `category` VARCHAR(255),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `comment` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `comment` VARCHAR(255),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `display_category` (
    `id` INTEGER NOT NULL,
    `name` VARCHAR(255),
    `active` VARCHAR(255),

    INDEX `Id`(`id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `external_information` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `borrelId` VARCHAR(255),
    `budgetNumber` VARCHAR(255),
    `contact` VARCHAR(255),
    `commentId` VARCHAR(255),

    INDEX `Comment_id`(`commentId`),
    INDEX `borrel_id`(`borrelId`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `kent_transactions` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `userId` VARCHAR(255),
    `timestamp` VARCHAR(255),

    INDEX `User_Id`(`userId`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `kent_transactions_row` (
    `transactionId` INTEGER NOT NULL AUTO_INCREMENT,
    `productId` VARCHAR(255),
    `amount` VARCHAR(255),

    INDEX `Product_id`(`productId`),
    INDEX `transaction_id`(`transactionId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `loss_transactions` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `userId` VARCHAR(255),
    `timestamp` VARCHAR(255),
    `reasonId` VARCHAR(255),
    `commentId` VARCHAR(255),

    INDEX `Comment_id`(`commentId`),
    INDEX `Reason_id`(`reasonId`),
    INDEX `User_id`(`userId`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `loss_transactions_row` (
    `transactionId` INTEGER NOT NULL AUTO_INCREMENT,
    `productId` VARCHAR(255),
    `amount` VARCHAR(255),

    INDEX `Product_id`(`productId`),
    INDEX `transaction_id`(`transactionId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `price_mutations` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `userId` VARCHAR(255),
    `productId` VARCHAR(255),
    `newPrice` VARCHAR(255),
    `internal` DATETIME(0),
    `timestamp` VARCHAR(255),

    INDEX `Product_id`(`productId`),
    INDEX `User_id`(`userId`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `product_category` (
    `productId` INTEGER NOT NULL AUTO_INCREMENT,
    `categoryId` VARCHAR(255),

    INDEX `Category_id`(`categoryId`),
    INDEX `Product_id`(`productId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `product_display` (
    `productId` INTEGER NOT NULL AUTO_INCREMENT,
    `displayCategoryId` INTEGER,

    INDEX `Display_category_id`(`displayCategoryId`),
    INDEX `Product_id`(`productId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `products` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255),
    `vat` VARCHAR(255),
    `productCategory` VARCHAR(255),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `reason` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `stock_transactions` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `userId` VARCHAR(255),
    `timestamp` VARCHAR(255),
    `commentId` VARCHAR(255),

    INDEX `User_id`(`userId`),
    INDEX `comment_id`(`commentId`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `stock_transactions_row` (
    `transactionId` INTEGER NOT NULL AUTO_INCREMENT,
    `productId` VARCHAR(255),
    `amount` VARCHAR(255),

    INDEX `Product_id`(`productId`),
    INDEX `transaction_id`(`transactionId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `user_rights` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `userId` INTEGER NOT NULL,
    `commActiefLid` BOOLEAN DEFAULT false,
    `commAAPP` BOOLEAN DEFAULT false,
    `commBestuur` BOOLEAN DEFAULT false,
    `commBorrelcie` BOOLEAN DEFAULT false,
    `commCHIP` BOOLEAN DEFAULT false,
    `privAds` BOOLEAN DEFAULT false,
    `privUser` BOOLEAN DEFAULT false,

    INDEX `User_Id`(`userId`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `user` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `vunetId` VARCHAR(6),
    `firstName` VARCHAR(255),
    `lastName` VARCHAR(255),
    `insertion` VARCHAR(255),
    `nickName` VARCHAR(255),
    `passWord` VARCHAR(255),
    `pinCode` VARCHAR(255),
    `validationMethod` VARCHAR(255),

    INDEX `PinCode`(`pinCode`),
    INDEX `VUnetId`(`vunetId`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
