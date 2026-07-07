rg={
    rg1={
        name= "netflix-rg"
        location=  "westus"
        managed_by= "satyam"
    }
    rg2={
        name= "starbucks-rg"
        location= "eastus"
        managed_by= "eastus"

    }
}
stg={
    name= "satyam-storage"
    location= "westus"
    resource_group_name="netflix-rg"
    account_tier= "Standard"
    account_replication_type= "GRS"
}

vnet={
    vnet1={
        name= "vnet-netflix"
        location= "westus"
        resource_group_name="netflix-rg"
        address_space=["10.0.0.0/24"]
    }
}
snet={
    subnet1={
    name="sunet-netflix"
    resource_group_name="netflix-rg"
    virtual_network_name= "vnet-netflix"
    address_prefixes= ["10.0.0.0/25"]
}

    subnet1={
    name="sunet2"
    resource_group_name="netflix-rg"
    virtual_network_name= "vnet-netflix"
    address_prefixes= ["10.0.0.128/25"]
}
}