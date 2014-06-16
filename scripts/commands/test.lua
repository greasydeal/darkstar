cmdprops =
{
    permission = 1,
    parameters = ""
};

function onTrigger(player)
test = "test2";
player:PrintToPlayer(string.format( "Player named %s not found!", test ) );
end