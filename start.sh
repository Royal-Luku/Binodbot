if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Royaldeep1/Binodbot /Binodbot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Binodbot
fi
cd /Binodbot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
