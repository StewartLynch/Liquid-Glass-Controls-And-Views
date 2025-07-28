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

struct GlassEffectTransitionView: View {
    @State private var isExpanded = false
    @State private var text = ""
    @Namespace var namespace2
    @Namespace var namespace
    var body: some View {
        NavigationStack {
            VStack {
                GlassEffectContainer {
                    HStack {
                        Image(systemName: "photo")
                            .font(.system(size: 36))
                            .frame(width: 80, height: 80)
                            .glassEffect(.regular.tint(.teal.opacity(0.4)).interactive())
                            .glassEffectID("photo", in: namespace)
                            .onTapGesture {
                                withAnimation {
                                    isExpanded.toggle()
                                }
                            }
                        if isExpanded {
                            Group {
                                Image(systemName: "building.2")
                                    .font(.system(size: 36))
                                    .frame(width: 80, height: 80)
                                    .glassEffectID("building", in: namespace)
                                Image(systemName: "fish")
                                    .font(.system(size: 36))
                                    .frame(width: 80, height: 80)
                                    .glassEffectID("fish", in: namespace)
                            }
                            .glassEffect()
                            .glassEffectUnion(id: 1, namespace: namespace)
                            .glassEffectTransition(.matchedGeometry)
                        }
                    }
                    HStack {
                        if isExpanded{
                            TextField("Enter name", text: $text)
                                .padding()
                                .glassEffect()
                                .glassEffectID("text", in: namespace2)
                                .glassEffectTransition(.matchedGeometry)
                        }
                        Image(systemName: isExpanded ? "checkmark" : "plus")
                            .font(.system(size: 36))
                            .frame(width: 80, height: 80)
                            .glassEffect(.regular.interactive())
                            .glassEffectID("plus", in: namespace2)
                            .contentTransition(.symbolEffect(.replace.magic(fallback: .replace)))
                            .onTapGesture {
                                withAnimation {
                                    isExpanded.toggle()
                                }
                            }
                    }
                    .padding()
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background {
                ScrollView([.horizontal, .vertical]){
                    Image(.stream)

                }
            }
            .navigationTitle("GlassEffectTransition")
        }
    }
}

#Preview {
    GlassEffectTransitionView()
}
