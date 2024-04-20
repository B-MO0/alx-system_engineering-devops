# Install a package
exec { 'install_flask_2.1.0':
  command     => '/usr/bin/pip3 install Flask==2.1.0',
  path        => ['/bin', '/usr/bin'],
  unless      => '/usr/bin/pip3 show Flask | grep -q "Version: 2.1.0"',
  environment => ['PIP_DISABLE_PIP_VERSION_CHECK=1'],
}
