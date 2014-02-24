require 'spec_helper'

describe 'htop', :type => :class do

    context "RedHat architecture" do
        let :facts do
            {
                :osfamily               => 'RedHat',
                :operatingsystemrelease => '6'
            }
        end

        it { should contain_package('htop').with(
                'ensure' => 'present'
            )
        }

     end

     context "Debian architecture" do
        let :facts do
            {
                :osfamily               => 'Debian',
                :operatingsystemrelease => '6'
            }
        end

        it { should contain_package('htop').with(
                'ensure' => 'present'
            )
        }

    end
 end
