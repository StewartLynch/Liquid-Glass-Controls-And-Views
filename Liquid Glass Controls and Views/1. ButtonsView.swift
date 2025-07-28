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

struct ButtonsView: View {
    @State private var removeBackground = false
    var body: some View {
        NavigationStack {
            Toggle("Remove Background", isOn: $removeBackground)
                .padding()
            Form {
                Group {
                    Section("Pre Liquid Glass") {
                        LabeledContent("None") {
                            Button("Label") {
                                
                            }
                        }
                        LabeledContent("Borderless") {
                            Button("Label") {
                                
                            }
                            .buttonStyle(.borderless)
                        }
                        LabeledContent("Plain") {
                            Button("Label") {
                                
                            }
                            .buttonStyle(.plain)
                        }
                        LabeledContent("Bordered") {
                            Button("Label") {
                                
                            }
                            .buttonStyle(.bordered)
                        }
                        LabeledContent("Boarded Prominent") {
                            Button("Label") {
                                
                            }
                            .buttonStyle(.borderedProminent)
                        }
                    }
                    Section("Liquid Glass") {
                        LabeledContent("Glass") {
                            Button("Label") {
                                
                            }
                            .buttonStyle(.glass)
                        }
                        LabeledContent("Glass Prominent") {
                            Button("Label") {
                                
                            }
                            .buttonStyle(.glassProminent)
                        }
                    }
                }
                .listRowBackground(removeBackground ? Color.clear : Color(.systemBackground))
            }
            .navigationTitle("Buttons")
        }
    }
}

#Preview {
    ButtonsView()
}
