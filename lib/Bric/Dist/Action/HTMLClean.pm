package Bric::Dist::Action::HTMLClean;

=head1 NAME

Bric::Dist::Action::HTMLClean - Class to Clean up and reformat HTML files.

=head1 VERSION

$Revision: 1.4 $

=cut

# Grab the Version Number.
our $VERSION = (qw$Revision: 1.4 $ )[-1];

=head1 DATE

$Date: 2001-11-20 00:02:45 $

=head1 SYNOPSIS

  use Bric::Dist::Action::HTMLClean;

  my $id = 1; # Assume that this is an HTMLClean action.
  # This line will automatically instantiate the correct subclass.
  my $action = Bric::Dist::Action->lookup({ id => $id });

  # Perform the action on a list of resources.
  action = $action->do_it($resources_href);
  # Undo the action on a list of resources.
  action = $action->undo_it($resources_href);

=head1 DESCRIPTION

This subclass of Bric::Dist::Action can be used to clean up and reformat HTML
pages. No additional properties are required, though we may choose to add more
later.

=cut

################################################################################
# Dependencies
################################################################################
# Standard Dependencies
use strict;

################################################################################
# Programmatic Dependences

################################################################################
# Inheritance
################################################################################
use base qw(Bric::Dist::Action);

################################################################################
# Function and Closure Prototypes
################################################################################
my ($get_attr);

################################################################################
# Constants
################################################################################
use constant DEBUG => 0;

################################################################################
# Fields
################################################################################
# Public Class Fields

################################################################################
# Private Class Fields


################################################################################

################################################################################
# Instance Fields
BEGIN { Bric::register_fields(); }

################################################################################
# Class Methods
################################################################################

=head1 INTERFACE

=head2 Constructors

Inherited from Bric::Dist::Action.

=head2 Destructors

=over 4

=item $ak->DESTROY

Dummy method to prevent wasting time trying to AUTOLOAD DESTROY.

B<Throws:> NONE.

B<Side Effects:> NONE.

B<Notes:> NONE.

=back

=cut

sub DESTROY {}

################################################################################

=head2 Public Class Methods

See Bric::Dist::Action.

=head2 Public Instance Methods

See Bric::Dist::Action.

################################################################################

=item $self = $action->do_it($job, $server_type)

Cleans the HTML files for a given job and server type.

B<Throws:>

=over 4

=item *



=back

B<Side Effects:> NONE.

B<Notes:> NONE.

=cut

sub do_it {
    # Add the resource to the Ulraseek index.
    my ($self, $res) = @_;
    my $types = $self->get_media_href;
    foreach my $r (@$res) {
	next unless $types->{$r->get_media_type};
	my $path = $r->get_tmp_path || $r->get_path;
	print STDERR "HTMLCleaning $path here.\n";
    }
    print STDERR "\n";
}

################################################################################

=back 4

=head1 PRIVATE

=head2 Private Class Methods

NONE.

=head2 Private Instance Methods

=over 4

=item $action = $action->_clear_attr

Deletes all attributes from this Bric::Dist::Action::HTMLClean instance. Called by
Bric::Dist::Action::set_type() above so that all the attributes can be cleared
before reblessing the action into a different action subclass.

B<Throws:>

=over 4

=item *

Problems retrieving fields.

=item *

Incorrect number of args to Bric::_set().

=item *

Bric::set() - Problems setting fields.

=item *

Unable to connect to database.

=item *

Unable to prepare SQL statement.

=item *

Unable to execute SQL statement.

=item *

Unable to bind to columns to statement handle.

=item *

Unable to fetch row from statement handle.

=back

B<Side Effects:> NONE.

B<Notes:> NONE.

=cut

sub _clear_attr { $_[0] }

################################################################################

=head2 Private Functions

NONE.

=cut

1;
__END__

=head1 NOTES

NONE.

=head1 AUTHOR

David Wheeler <david@wheeler.net>

=head1 SEE ALSO

perl(1),
Bric (2),
Bric::Dist::Action(3)

=cut














