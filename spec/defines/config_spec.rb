require 'spec_helper'

describe 'htop::config', :type => :define do
  let :pre_condition do
    "class { 'htop': }"
  end

  context "RedHat architecture" do
    let :facts do
      {
        :osfamily               => 'RedHat',
        :operatingsystemrelease => '6'
      }
    end

    let (:title) { 'mrweb '}

    let (:params) { {:user => 'mrweb'} }

    it do
      should contain_file('/home/mrweb/.config').with(
        'ensure' => 'directory',
        'owner'  => 'mrweb',
        'group'  => 'mrweb',
        'mode'   => '0700'
      )
      should contain_file('/home/mrweb/.config/htop').with(
        'ensure' => 'directory',
        'owner'  => 'mrweb',
        'group'  => 'mrweb',
        'mode'   => '0700'
      )
      should contain_file('/home/mrweb/.config/htop/htoprc').with(
        'ensure' => 'file',
        'owner'  => 'mrweb',
        'group'  => 'mrweb',
        'mode'   => '0644'
      )
    end

    context 'rooter' do
      let (:title) { 'root' }

      let (:params) { {:user => 'root'} }

      it do
        should contain_file('/root/.config').with(
          'ensure' => 'directory',
          'owner'  => 'root',
          'group'  => 'root',
          'mode'   => '0700'
        )
        should contain_file('/root/.config/htop').with(
          'ensure' => 'directory',
          'owner'  => 'root',
          'group'  => 'root',
          'mode'   => '0700'
        )
        should contain_file('/root/.config/htop/htoprc').with(
          'ensure' => 'file',
          'owner'  => 'root',
          'group'  => 'root',
          'mode'   => '0644'
        )
      end
    end

   end

   context "Debian architecture" do
    let :facts do
      {
        :osfamily               => 'Debian',
        :operatingsystemrelease => '6'
      }
    end

    let (:title) { 'mrweb '}

    let (:params) { {:user => 'mrweb'} }

    it do
      should contain_file('/home/mrweb/.htoprc').with(
        'ensure' => 'file',
        'owner'  => 'mrweb',
        'group'  => 'mrweb',
        'mode'   => '0644'
      )
    end

  end
 end
