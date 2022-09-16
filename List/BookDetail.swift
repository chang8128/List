//
//  BookDetail.swift
//  List
//
//  Created by 常志平 on 16/9/22.
//

import SwiftUI

struct BookDetail: View {
    
    var body: some View {
        ScrollView {
            Image("zhongyangdiguodecaizhengmima")
            
            VStack(alignment: .leading, spacing: 3.0) {
                Text("中央帝国的财政密码")
                    .font(.title)
                    .padding(.bottom)
                HStack(alignment: .center) {
                    Text("作者：")
                        .font(.subheadline)
                    Text("郭建龙")
                        .font(.subheadline)
                        .fontWeight(.bold)
                }
                .padding(.bottom)
                HStack(alignment: .top) {
                    Text("简介:")
                        .font(.subheadline)
                    Text("bookIndex.abstract")
                        .font(.subheadline)
                }
                .foregroundColor(.secondary)
            }
            .padding()
            .font(.subheadline)
            Divider()
            
            VStack(alignment: .leading, spacing: 3.0) {
                Text("摘要介绍")
                    .font(.title2)
                    .padding(.vertical)
                Text("详细介绍，爱情是人类情感中美妙的一种体验，本书从心理学角度对两性关系进行了科学而系统的总结。其使用了大量社会心理学研究成果，将大量数据调研的结果清晰的呈现在读者的眼前，从而深入浅出的剖析情感中经常出现的问题。本书既对专业人士具有参考意义；")
                    .font(.body)
            }
            .padding()
        }
        .navigationTitle("具体的一本书")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct BookDetail_Previews: PreviewProvider {
    static var previews: some View {
        BookDetail()
    }
}
