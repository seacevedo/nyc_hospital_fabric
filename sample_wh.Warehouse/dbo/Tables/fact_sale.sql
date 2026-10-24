CREATE TABLE [dbo].[fact_sale] (
    [SaleKey]           BIGINT          NULL,
    [CityKey]           INT             NULL,
    [CustomerKey]       INT             NULL,
    [BillToCustomerKey] INT             NULL,
    [StockItemKey]      INT             NULL,
    [InvoiceDateKey]    DATETIME2 (6)   NULL,
    [DeliveryDateKey]   DATETIME2 (6)   NULL,
    [SalespersonKey]    INT             NULL,
    [WWIInvoiceID]      INT             NULL,
    [Description]       VARCHAR (MAX)   NULL,
    [Package]           VARCHAR (100)   NULL,
    [Quantity]          INT             NULL,
    [UnitPrice]         NUMERIC (18, 2) NULL,
    [TaxRate]           NUMERIC (18, 3) NULL,
    [TotalExcludingTax] NUMERIC (18, 2) NULL,
    [TaxAmount]         NUMERIC (18, 2) NULL,
    [Profit]            NUMERIC (18, 2) NULL,
    [TotalIncludingTax] NUMERIC (18, 2) NULL,
    [TotalDryItems]     INT             NULL,
    [TotalChillerItems] INT             NULL,
    [LineageKey]        INT             NULL
);


GO