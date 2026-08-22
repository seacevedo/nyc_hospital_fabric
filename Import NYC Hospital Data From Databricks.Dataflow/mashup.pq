[StagingDefinition = [Kind = "FastCopy"]]
section Section1;
shared #"`hospital_data` `hospital_data_bronze` `ny_hopsital_discharges_2022`" = let
  Source = DatabricksMultiCloud.Catalogs("dbc-e27243fb-80d4.cloud.databricks.com", "/sql/1.0/warehouses/58dcd1c263d9ae21", [QueryTags = null, EnableAutomaticProxyDiscovery = "enabled", Implementation = "2.0", Protocol = null, Catalog = "hospital_data", Database = "hospital_data_bronze"]),
  #"Navigation 1" = Source{[Item = "ny_hopsital_discharges_2022", Schema = "hospital_data_bronze", Catalog = "hospital_data", Kind = "Table"]}[Data]
in
  #"Navigation 1";
shared #"`hospital_data` `hospital_data_bronze` `ny_hospital_discharges_2018`" = let
  Source = DatabricksMultiCloud.Catalogs("dbc-e27243fb-80d4.cloud.databricks.com", "/sql/1.0/warehouses/58dcd1c263d9ae21", [QueryTags = null, EnableAutomaticProxyDiscovery = "enabled", Implementation = "2.0", Protocol = null, Catalog = "hospital_data", Database = "hospital_data_bronze"]),
  #"Navigation 1" = Source{[Item = "ny_hospital_discharges_2018", Schema = "hospital_data_bronze", Catalog = "hospital_data", Kind = "Table"]}[Data]
in
  #"Navigation 1";
[DataDestinations = {[Definition = [Kind = "Reference", QueryName = "`hospital_data` `hospital_data_bronze` `ny_hospital_discharg_DataDestination", IsNewTarget = true], Settings = [Kind = "Automatic", TypeSettings = [Kind = "File", TransformationQueryName = "`hospital_data` `hospital_data_bronze` `ny_hospital_DataDestinationTransform"]]]}]
shared #"`hospital_data` `hospital_data_bronze` `ny_hospital_discharges_2019`" = let
  Source = DatabricksMultiCloud.Catalogs("dbc-e27243fb-80d4.cloud.databricks.com", "/sql/1.0/warehouses/58dcd1c263d9ae21", [QueryTags = null, EnableAutomaticProxyDiscovery = "enabled", Implementation = "2.0", Protocol = null, Catalog = "hospital_data", Database = "hospital_data_bronze"]),
  #"Navigation 1" = Source{[Item = "ny_hospital_discharges_2019", Schema = "hospital_data_bronze", Catalog = "hospital_data", Kind = "Table"]}[Data],
  #"Appended query" = Table.Combine({#"Navigation 1", #"`hospital_data` `hospital_data_bronze` `ny_hospital_discharges_2018`", #"`hospital_data` `hospital_data_bronze` `ny_hospital_discharges_2020`", #"`hospital_data` `hospital_data_bronze` `ny_hospital_discharges_2021`", #"`hospital_data` `hospital_data_bronze` `ny_hopsital_discharges_2022`", #"`hospital_data` `hospital_data_bronze` `ny_hospital_discharges_2023`", #"`hospital_data` `hospital_data_bronze` `ny_hospital_discharges_2024`"})
in
  #"Appended query";
shared #"`hospital_data` `hospital_data_bronze` `ny_hospital_discharges_2020`" = let
  Source = DatabricksMultiCloud.Catalogs("dbc-e27243fb-80d4.cloud.databricks.com", "/sql/1.0/warehouses/58dcd1c263d9ae21", [QueryTags = null, EnableAutomaticProxyDiscovery = "enabled", Implementation = "2.0", Protocol = null, Catalog = "hospital_data", Database = "hospital_data_bronze"]),
  #"Navigation 1" = Source{[Item = "ny_hospital_discharges_2020", Schema = "hospital_data_bronze", Catalog = "hospital_data", Kind = "Table"]}[Data]
in
  #"Navigation 1";
shared #"`hospital_data` `hospital_data_bronze` `ny_hospital_discharges_2021`" = let
  Source = DatabricksMultiCloud.Catalogs("dbc-e27243fb-80d4.cloud.databricks.com", "/sql/1.0/warehouses/58dcd1c263d9ae21", [QueryTags = null, EnableAutomaticProxyDiscovery = "enabled", Implementation = "2.0", Protocol = null, Catalog = "hospital_data", Database = "hospital_data_bronze"]),
  #"Navigation 1" = Source{[Item = "ny_hospital_discharges_2021", Schema = "hospital_data_bronze", Catalog = "hospital_data", Kind = "Table"]}[Data]
in
  #"Navigation 1";
shared #"`hospital_data` `hospital_data_bronze` `ny_hospital_discharges_2023`" = let
  Source = DatabricksMultiCloud.Catalogs("dbc-e27243fb-80d4.cloud.databricks.com", "/sql/1.0/warehouses/58dcd1c263d9ae21", [QueryTags = null, EnableAutomaticProxyDiscovery = "enabled", Implementation = "2.0", Protocol = null, Catalog = "hospital_data", Database = "hospital_data_bronze"]),
  #"Navigation 1" = Source{[Item = "ny_hospital_discharges_2023", Schema = "hospital_data_bronze", Catalog = "hospital_data", Kind = "Table"]}[Data]
in
  #"Navigation 1";
shared #"`hospital_data` `hospital_data_bronze` `ny_hospital_discharges_2024`" = let
  Source = DatabricksMultiCloud.Catalogs("dbc-e27243fb-80d4.cloud.databricks.com", "/sql/1.0/warehouses/58dcd1c263d9ae21", [QueryTags = null, EnableAutomaticProxyDiscovery = "enabled", Implementation = "2.0", Protocol = null, Catalog = "hospital_data", Database = "hospital_data_bronze"]),
  #"Navigation 1" = Source{[Item = "ny_hospital_discharges_2024", Schema = "hospital_data_bronze", Catalog = "hospital_data", Kind = "Table"]}[Data]
in
  #"Navigation 1";
shared #"`hospital_data` `hospital_data_bronze` `ny_hospital_discharg_DataDestination" = let
  Pattern = Lakehouse.Contents([CreateNavigationProperties = false, EnableFolding = false, HierarchicalNavigation = true, EnableVorder = true, OutputMetadataRefresh = true]),
  Navigation_1 = Pattern{[workspaceId = "464a9008-a5f2-4c1f-8641-a9477a698f11"]}[Data],
  Navigation_2 = Navigation_1{[lakehouseId = "ff52aabf-0c81-4832-8d35-a57bcefe315d"]}[Data],
  Navigation_3 = Navigation_2{[Id = "Files", ItemKind = "Folder"]}[Data],
  FileNavigation = Navigation_3{[Name = "nyc_hospital_discharges_2018_2024.csv"]}?[Content]?
in
  FileNavigation;
shared #"`hospital_data` `hospital_data_bronze` `ny_hospital_DataDestinationTransform" = Csv.OutputConfiguration([Encoding = 65001, Delimiter = ","]);
