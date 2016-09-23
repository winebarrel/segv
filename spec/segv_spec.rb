require 'spec_helper'

describe 'Segv#segv' do
  subject do
    out, _ = Open3.capture2e('ruby', '-I', File.expand_path('../../lib', __FILE__), '-r', 'segv', '-e', 'Segv.segv')
    out
  end

  it { is_expected.to match(/\[BUG\] Segmentation fault/) }
end
