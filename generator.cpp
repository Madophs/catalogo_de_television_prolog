#include <bits/stdc++.h>

using namespace std;

struct TvShow{
	string name;
	string channel;
	string description;
	int day;
	int startHour;
	int length;
	TvShow(string name, string channel,string description, int day, int startHour, int length){
		this->name = name;
		this->channel = channel;
		this->description = description;
		this->day = day;
		this->startHour = startHour;
		this->length = length;
	}
};

ostream & operator << (ostream &out, TvShow show){
	out<<"programa('"<<show.name<<"','"<<show.channel<<"',"<<show.day<<","<<show.startHour<<","<<show.length<<",'"<<show.description<<"').";
	return out;
}

string trimString(string str){
	while(!str.empty() && str.back() == ' '){
		str.pop_back();
	}
	return str;
}
void printRules(){
	cout<<"% Reglas\n\n";
	cout<<"getCanales(X,Y) :- forall(canal(X,Y),imprimeCanal(X)).\n";
	cout<<"getProgramacion(Nombre,Canal,Dia,Hora,Duracion,Descripcion) :- forall(programa(Nombre,Canal,Dia,Hora,Duracion,Descripcion), imprimeInfo(Nombre,Canal,Dia,Hora,Duracion,Descripcion)).\n";
	cout<<"imprimeInfo(A,B,C,D,E,F) :-separa(A),imprimeCanal2(B),separa(C),separa(D),separa(E),separa(F),nl.\n";
	cout<<"separa(X) :- write('|'), write(X).\n";
	cout<<"imprimeCanal(X) :- canal(X,Y),write(X),write('|'),write(Y),nl.\n";
	cout<<"imprimeCanal2(X) :- canal(X,Y),write('|'),write(X),write('|'),write(Y).\n\n";
}

void  generateCalendar(string channelName, unordered_map<string,string> tvShows){
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
			string tvShowName = iter->first;
			string tvShowDescription = iter->second;
			if(hoursRemaining <= 3){
				int tvShowLength = hoursRemaining;
				TvShow tvShow(tvShowName, channelName, tvShowDescription, i, currentHour, tvShowLength);
				calendar.back().emplace_back(tvShow);
				currentHour += tvShowLength;
				hoursRemaining -= tvShowLength;
			}else{
				int tvShowLength = (int)(rand() % 3)+1;
				TvShow tvShow(tvShowName, channelName, tvShowDescription, i, currentHour, tvShowLength);
				calendar.back().emplace_back(tvShow);
				currentHour += tvShowLength;
				hoursRemaining -= tvShowLength;
			}
			tvShows.erase(tvShowName);
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
	vector<pair<int,string>> channelsVector;
	unordered_map<string,string> tvShowMap;
	int numChannels,channelNumber;
	unordered_set<int> uniqueChannelNumbers;
	string tvShowName, channelName, tvShowDescription;
	cin>>numChannels;
	cin.ignore();
	while(numChannels-- && getline(cin, channelName)){
		do{
			channelNumber = (int)(rand()%1000) +1;
		}while(uniqueChannelNumbers.find(channelNumber) != uniqueChannelNumbers.end());
		channelsVector.emplace_back(channelNumber,channelName);
	}
	while(getline(cin,tvShowName)){
		if(tvShowName.empty()) continue;
		getline(cin,tvShowDescription);
		tvShowName = trimString(tvShowName);
		tvShowDescription = trimString(tvShowDescription);
		if(tvShowName.empty() || tvShowDescription.empty()) continue;
		tvShowMap[tvShowName] = tvShowDescription;
	}
	sort(channelsVector.begin(), channelsVector.end());
	for(auto channel : channelsVector){
		cout<<"canal('"<<channel.second<<"',"<<channel.first<<").\n";
	}
	cout<<"\n";
	printRules();
	for(int i = 0; i<channelsVector.size(); i++){
		generateCalendar(channelsVector[i].second, tvShowMap);
	}
	return 0;
}
