# Plugin "CustomApp" OCSInventory

package Ocsinventory::Agent::Modules::Customapp;


sub new {

    my $name="customapp"; # Name of the module

    my (undef,$context) = @_;
    my $self = {};

    #Create a special logger for the module
    $self->{logger} = new Ocsinventory::Logger ({
        config => $context->{config}
    });
    $self->{logger}->{header}="[$name]";
    $self->{context}=$context;
    $self->{structure}= {
        name => $name,
        start_handler => undef,    #or undef if don't use this hook
        prolog_writer => undef,    #or undef if don't use this hook
        prolog_reader => undef,    #or undef if don't use this hook
        inventory_handler => $name."_inventory_handler",    #or undef if don't use this hook
        end_handler => undef       #or undef if don't use this hook
    };
    bless $self;
}

######### Hook methods ############
sub customapp_inventory_handler {

    my $self = shift;
    my $logger = $self->{logger};
    my $common = $self->{context}->{common};
    
    my $content;
    $logger->debug("Yeah you are in customapp_inventory_handler:)");
    

    my $path = '/path/to/file.txt';
    if (-f $path) {
        $logger->debug("File exists");
        $content = do {
            local $/ = undef;
            open my $fh, "<", $path;
            <$fh>;
        };
    
    } else {
        $logger->debug("Could not find file for path : $path");
        $content = "Could not find file";
    }

    push @{$common->{xmltags}->{CUSTOMAPP}},
    {
        PATH => [$path],
        TEXT => [$content],
    };


    $logger->debug("Finishing customapp_inventory_handler ..");
}

1;
