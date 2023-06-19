if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/hemanthbot69/MyAutoFilter69.git /MyAutoFilter69
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /MyAutoFilter69
fi
cd /AutoFilterBot
pip3 install -U -r requirements.txt
echo "Starting Bot..."
python3 bot.py
