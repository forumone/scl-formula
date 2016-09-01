install-scl-repo-package:
  pkg.installed:
    - name: centos-release-scl

# Install any packages from software collection
{% set scl_pkgs = salt['pillar.get']('scl_packages', False) %}
{% if scl_pkgs != False %}
install-devtoolset-packages:
  pkg.installed:
    - pkgs: {{ scl_pkgs }}
{% endif %}
      
