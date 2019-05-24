#include <bits/stdc++.h>

using namespace std;

string days[] = {"Lunes","Martes", "Miércoles","Jueves","Viernes","Sábado","Domingo"};

struct TvShow{
	string name;
	string channel;
	string day;
	int startHour;
	int length;
	TvShow(string name, string channel, string day, int startHour, int length){
		this->name = name;
		this->channel = channel;
		this->day = day;
		this->startHour = startHour;
		this->length = length;
	}
};

ostream & operator << (ostream &out, TvShow show){
	out<<"programa('"<<show.name<<"','"<<show.channel<<"','"<<show.day<<"',"<<show.startHour<<","<<show.length<<").";
	return out;
}

string trimString(string str){
	while(!str.empty() && str.back() == ' '){
		str.pop_back();
	}
	return str;
}

void  generateCalendar(string channelName, unordered_set<string> tvShows){
	vector<vector<TvShow>> calendar;
	cout<<"% Programación de "<<channelName<<"\n\n";
	for(int i = 0; i<7; i++){
		int hoursRemaining = 24;
		int currentHour = 0;
		calendar.emplace_back(vector<TvShow>());
		while(hoursRemaining > 0){
			int tvShowIndex = (int)(rand() % (int)tvShows.size());
			auto iter = tvShows.begin();
			advance(iter,tvShowIndex);
			string tvShowName = *iter;
			if(hoursRemaining <= 3){
				int tvShowLength = hoursRemaining;
				TvShow tvShow(tvShowName, channelName, days[i], currentHour, tvShowLength);
				calendar.back().emplace_back(tvShow);
				currentHour += tvShowLength;
				hoursRemaining -= tvShowLength;
			}else{
				int tvShowLength = (int)(rand() % 3)+1;
				TvShow tvShow(tvShowName, channelName, days[i], currentHour, tvShowLength);
				calendar.back().emplace_back(tvShow);
				currentHour += tvShowLength;
				hoursRemaining -= tvShowLength;
			}	
		}
	}
	for(int i = 0; i<calendar.size(); i++){
		for(int j = 0; j<calendar[i].size(); j++){
			cout<<calendar[i][j]<<"\n";
		}
		cout<<"\n";
	}
	cout<<"\n";
}

int main(){
	ios_base::sync_with_stdio(false);
	cin.tie(NULL);
	cout.tie(NULL);
	srand(time(0));
	vector<string> channelsVector;
	unordered_set<string> tvShowSet;
	int numChannels;
	string tvShowName, channelName;
	cin>>numChannels;
	cin.ignore();
	while(numChannels-- && getline(cin, channelName)) channelsVector.emplace_back(channelName);
	while(getline(cin,tvShowName)){
		tvShowName = trimString(tvShowName);
		if(tvShowName.empty()) continue;
		tvShowSet.insert(tvShowName);
	}
	for(auto channel : channelsVector) cout<<"canal('"<<channel<<"').\n";
	cout<<"\n";
	for(int i = 0; i<channelsVector.size(); i++){
		generateCalendar(channelsVector[i], tvShowSet);
	}
	return 0;
}
