requires 'List::MoreUtils';
requires 'URI';
requires 'Math::CDF';
requires 'Math::Business::BlackScholes::Binaries::Greeks::Delta';
requires 'File::Spec';
requires 'JSON';
requires 'Math::Business::BlackScholes::Binaries';

on test => sub {
    requires 'Test::More', '0.96';
    requires 'Test::NoWarnings' => 0;
    requires 'Test::Exception'  => 0;
    requires 'Test::MockTime'   => 0;
    requires 'Test::MockModule' => 0;
};
