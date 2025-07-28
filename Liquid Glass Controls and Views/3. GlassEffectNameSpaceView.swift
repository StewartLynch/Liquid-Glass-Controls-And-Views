//
//----------------------------------------------
// Original project: Liquid Glass Controls and Views
// by  Stewart Lynch on 2025-07-27
//
// Follow me on Mastodon: https://iosdev.space/@StewartLynch
// Follow me on Threads: https://www.threads.net/@stewartlynch
// Follow me on Bluesky: https://bsky.app/profile/stewartlynch.bsky.social
// Follow me on X: https://x.com/StewartLynch
// Follow me on LinkedIn: https://linkedin.com/in/StewartLynch
// Email: slynch@createchsol.com
// Subscribe on YouTube: https://youTube.com/@StewartLynch
// Buy me a ko-fi:  https://ko-fi.com/StewartLynch
//----------------------------------------------
// Copyright © 2025 CreaTECH Solutions. All rights reserved.


import SwiftUI

struct GlassEffectNameSpaceView: View {
    @Namespace var namespace
    @Namespace var namespace2
    var body: some View {
        NavigationStack{
            VStack {
                GlassEffectContainer {
                    HStack {
                        Image(systemName: "cloud.bolt.rain.fill")
                            .font(.system(size: 36))
                            .frame(width: 80, height: 80)
                            .glassEffect()
                            .glassEffectUnion(id: 1, namespace: namespace)
                        Image(systemName: "sun.rain.fill")
                            .font(.system(size: 36))
                            .frame(width: 80, height: 80)
                            .glassEffect()
                            .glassEffectUnion(id: 1, namespace: namespace)
                        Group {
                            Image(systemName: "cloud.bolt.rain.fill")
                                .font(.system(size: 36))
                                .frame(width: 80, height: 80)
                                .glassEffect()
                            Image(systemName: "sun.rain.fill")
                                .font(.system(size: 36))
                                .frame(width: 80, height: 80)
                                .glassEffect()
                        }
                        .glassEffectUnion(id: 2, namespace: namespace)
                    }
                    HStack {
                        Button {
                            
                        } label: {
                            Image(systemName: "cloud.bolt.rain.fill")
                                .font(.system(size: 36))
                                .frame(width: 80, height: 80)
                        }
                            .glassEffect()
                        Button {
                            
                        } label: {
                            Image(systemName: "sun.rain.fill")
                                .font(.system(size: 36))
                                .frame(width: 80, height: 80)
                        }
                            .glassEffect()
                    }
                    .buttonStyle(.plain)
                    .glassEffectUnion(id: 1, namespace: namespace2)
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background {
                ScrollView([.horizontal, .vertical]){
                    Image(.city)
                    
                }
            }
            .navigationTitle("NameSpaces")
        }
    }
}

#Preview {
    GlassEffectNameSpaceView()
}
