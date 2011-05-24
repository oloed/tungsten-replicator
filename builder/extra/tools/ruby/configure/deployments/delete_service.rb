class DeleteServiceDeployment < ConfigureDeployment
  def get_name
    ConfigureServicePackage::SERVICE_DELETE
  end
  
  def get_deployment_configurations()
    config_objs = [@config.dup()]
    
    config_objs
  end
  
  def get_deployment_object_modules(config)
    modules = [
      ConfigureDeploymentStepReplicationDataservice,
      DeploymentStepDeleteService,
      ConfigureDeploymentStepMySQL
    ]

    modules
  end
  
  def include_deployment_for_package?(package)
    if package.is_a?(ConfigureServicePackage)
      true
    else
      false
    end
  end
  
  def require_deployment_host
    true
  end
end