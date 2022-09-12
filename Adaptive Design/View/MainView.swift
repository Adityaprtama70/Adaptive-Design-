//
//  MainView.swift
//  Adaptive Design
//
//  Created by Adit on 05/09/22.
//

import SwiftUI

struct MainView: View {
    // MARK: Current Tab
    @State var currentTab: Tab = .dashboard
    @State var showSideBar: Bool = false
    var body: some View {
        ResponsiveView { props in
            HStack(spacing: 0) {
                // MARK: Side Bar
                // MARK: Displaying Only for Ipad and not on Split Mode
                if props.isiPad && !props.isiPad{
                    SideBar(props: props, currentTab: $currentTab)
                }
                
                Dashboard(props: props, showSideBar: $showSideBar)
            }
            .overlay {
                ZStack(alignment: .leading) {
                    Color.black
                        .opacity(showSideBar ? 0.35 : 0)
                        .ignoresSafeArea()
                        .onTapGesture {
                            withAnimation(.easeInOut){showSideBar = false}
                        }
                    
                    if showSideBar{
                        SideBar(props: props, currentTab: $currentTab)
                            .transition(.move(edge: .leading))
                    }
                }
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
