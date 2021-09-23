
#include<bits/stdc++.h>
using namespace std;

void printbfs(int** edges,int n,int sv){
queue<int> pending;
bool* visited= new bool[n];

for(int i=0;i<n;i++){
    visited[i]=false;
}
pending.push(sv);
visited[sv]=true;

while(!pending.empty()){
    int curr_val=pending.front();
    pending.pop();
    cout<<curr_val<<endl;
    for(int i=0;i<n;i++){
    if(edges[curr_val][i]==1 && !visited[i]){
        if(curr_val==i){
            continue;
        }

        pending.push(i);
        visited[i]=true;
    }

    }

}

}

int main()
{
    int n,e;
    cin>>n;
    cin>>e;

    int** edges=new int*[n];

    for(int i=0;i<n;i++){
         edges[i]=new int[n];

    for(int j=0;j<n;j++){
        edges[i][j]=0;
    }
    }

    for(int i=0;i<e;i++){
            int f,s;
            cin>>f>>s;
        edges[f][s]=1;
        edges[s][f]=1;
    }
    bool* visited=new bool[n];
    for(int i=0;i<n;i++){
        visited[i]=false;
    }
    print(edges,n,0,visited);
    cout<<endl<<endl<<endl;
     printbfs(edges,n,0);
    delete [] visited;
    for(int i=0;i<n;i++){
        delete[] edges[i];
    }
    delete[] edges;

    return 0;
}
