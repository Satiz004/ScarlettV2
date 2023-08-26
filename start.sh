if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Satiz004/ScarlettV2 /ScarlettV2
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /ScarlettV2
fi
cd /ScarlettV2
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
