# frozen_string_literal: true

require 'spec_helper'

describe 'jbtest' do
  # let(:params) { { host: '192.0.2.2', } }
  let(:facts) { {} }
  Puppet::Util::Log.level = :debug
  Puppet::Util::Log.newdestination(:console)
  context "on #test" do
    describe 'check default config' do
      it { is_expected.to compile.with_all_deps }
    end
  end
end
