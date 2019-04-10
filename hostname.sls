set_hostname: #Name declaration should make sense for what it supposed to be used
  network.system: #State module that we are invoking
    - enabled: True #Parameters or arguments that are supported by the state.module
    - hostname: saltmaster
    - apply_hostname: True
    - retain_settings: True