# Shortcut to connect to a vagrant machine.
function myvagrant() {
    cd ~/work/alkemics/repo/infrastructure-ansible;
    vagrant status $1 | head -3 | tail -1 | grep -v "$1\ *running" && vagrant up $1;
    vagrant ssh $1
}
