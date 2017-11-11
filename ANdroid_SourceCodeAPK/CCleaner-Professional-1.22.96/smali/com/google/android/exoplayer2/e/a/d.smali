.class public final Lcom/google/android/exoplayer2/e/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/e/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/e/a",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/google/android/exoplayer2/e/a/e;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(I)I
    .locals 1

    .prologue
    .line 120
    if-eqz p0, :cond_0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private static a([BII)I
    .locals 2

    .prologue
    .line 92
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/e/a/d;->c([BI)I

    move-result v0

    .line 95
    if-eqz p2, :cond_0

    const/4 v1, 0x3

    if-ne p2, v1, :cond_2

    .line 107
    :cond_0
    :goto_0
    return v0

    .line 104
    :cond_1
    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/e/a/d;->c([BI)I

    move-result v0

    .line 100
    :cond_2
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_3

    .line 101
    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_1

    add-int/lit8 v1, v0, 0x1

    aget-byte v1, p0, v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 107
    :cond_3
    array-length v0, p0

    goto :goto_0
.end method

.method private static b(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    packed-switch p0, :pswitch_data_0

    .line 280
    const-string/jumbo v0, "ISO-8859-1"

    :goto_0
    return-object v0

    .line 272
    :pswitch_0
    const-string/jumbo v0, "ISO-8859-1"

    goto :goto_0

    .line 274
    :pswitch_1
    const-string/jumbo v0, "UTF-16"

    goto :goto_0

    .line 276
    :pswitch_2
    const-string/jumbo v0, "UTF-16BE"

    goto :goto_0

    .line 278
    :pswitch_3
    const-string/jumbo v0, "UTF-8"

    goto :goto_0

    .line 270
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static b([BI)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/e/a/e;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/e/b;
        }
    .end annotation

    .prologue
    .line 47
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 48
    new-instance v3, Lcom/google/android/exoplayer2/j/k;

    invoke-direct {v3, p0, p1}, Lcom/google/android/exoplayer2/j/k;-><init>([BI)V

    .line 1130
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/j/k;->d()I

    move-result v0

    .line 1131
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/j/k;->d()I

    move-result v1

    .line 1132
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/j/k;->d()I

    move-result v4

    .line 1133
    const/16 v5, 0x49

    if-ne v0, v5, :cond_0

    const/16 v5, 0x44

    if-ne v1, v5, :cond_0

    const/16 v5, 0x33

    if-eq v4, v5, :cond_1

    .line 1134
    :cond_0
    new-instance v2, Lcom/google/android/exoplayer2/e/b;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v5, "Unexpected ID3 file identifier, expected \"ID3\", actual \"%c%c%c\"."

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 1135
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    .line 1134
    invoke-static {v3, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/android/exoplayer2/e/b;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1137
    :cond_1
    const/4 v0, 0x2

    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/j/k;->d(I)V

    .line 1139
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/j/k;->d()I

    move-result v1

    .line 1140
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/j/k;->m()I

    move-result v0

    .line 1143
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_3

    .line 1144
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/j/k;->m()I

    move-result v4

    .line 1145
    const/4 v5, 0x4

    if-le v4, v5, :cond_2

    .line 1146
    add-int/lit8 v5, v4, -0x4

    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer2/j/k;->d(I)V

    .line 1148
    :cond_2
    sub-int/2addr v0, v4

    .line 1152
    :cond_3
    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_4

    .line 1153
    add-int/lit8 v0, v0, -0xa

    .line 51
    :cond_4
    :goto_0
    if-lez v0, :cond_a

    .line 52
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/j/k;->d()I

    move-result v1

    .line 53
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/j/k;->d()I

    move-result v4

    .line 54
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/j/k;->d()I

    move-result v5

    .line 55
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/j/k;->d()I

    move-result v6

    .line 56
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/j/k;->m()I

    move-result v7

    .line 57
    const/4 v8, 0x1

    if-le v7, v8, :cond_a

    .line 62
    const/4 v8, 0x2

    invoke-virtual {v3, v8}, Lcom/google/android/exoplayer2/j/k;->d(I)V

    .line 66
    const/16 v8, 0x54

    if-ne v1, v8, :cond_5

    const/16 v8, 0x58

    if-ne v4, v8, :cond_5

    const/16 v8, 0x58

    if-ne v5, v8, :cond_5

    const/16 v8, 0x58

    if-ne v6, v8, :cond_5

    .line 1161
    :try_start_0
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/j/k;->d()I

    move-result v1

    .line 1162
    invoke-static {v1}, Lcom/google/android/exoplayer2/e/a/d;->b(I)Ljava/lang/String;

    move-result-object v4

    .line 1164
    add-int/lit8 v5, v7, -0x1

    new-array v5, v5, [B

    .line 1165
    const/4 v6, 0x0

    add-int/lit8 v8, v7, -0x1

    invoke-virtual {v3, v5, v6, v8}, Lcom/google/android/exoplayer2/j/k;->a([BII)V

    .line 1167
    const/4 v6, 0x0

    invoke-static {v5, v6, v1}, Lcom/google/android/exoplayer2/e/a/d;->a([BII)I

    move-result v6

    .line 1168
    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v8, v5, v9, v6, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 1170
    invoke-static {v1}, Lcom/google/android/exoplayer2/e/a/d;->a(I)I

    move-result v9

    add-int/2addr v6, v9

    .line 1171
    invoke-static {v5, v6, v1}, Lcom/google/android/exoplayer2/e/a/d;->a([BII)I

    move-result v1

    .line 1172
    new-instance v9, Ljava/lang/String;

    sub-int/2addr v1, v6

    invoke-direct {v9, v5, v6, v1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 1174
    new-instance v1, Lcom/google/android/exoplayer2/e/a/h;

    invoke-direct {v1, v8, v9}, Lcom/google/android/exoplayer2/e/a/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :goto_1
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    add-int/lit8 v1, v7, 0xa

    sub-int/2addr v0, v1

    goto :goto_0

    .line 68
    :cond_5
    const/16 v8, 0x50

    if-ne v1, v8, :cond_6

    const/16 v8, 0x52

    if-ne v4, v8, :cond_6

    const/16 v8, 0x49

    if-ne v5, v8, :cond_6

    const/16 v8, 0x56

    if-ne v6, v8, :cond_6

    .line 1179
    new-array v1, v7, [B

    .line 1180
    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4, v7}, Lcom/google/android/exoplayer2/j/k;->a([BII)V

    .line 1182
    const/4 v4, 0x0

    invoke-static {v1, v4}, Lcom/google/android/exoplayer2/e/a/d;->c([BI)I

    move-result v4

    .line 1183
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v8, "ISO-8859-1"

    invoke-direct {v5, v1, v6, v4, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 1185
    add-int/lit8 v4, v4, 0x1

    .line 1186
    array-length v6, v1

    invoke-static {v1, v4, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    .line 1188
    new-instance v1, Lcom/google/android/exoplayer2/e/a/f;

    invoke-direct {v1, v5, v4}, Lcom/google/android/exoplayer2/e/a/f;-><init>(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 83
    :catch_0
    move-exception v0

    .line 84
    new-instance v1, Lcom/google/android/exoplayer2/e/b;

    const-string/jumbo v2, "Unsupported encoding"

    invoke-direct {v1, v2, v0}, Lcom/google/android/exoplayer2/e/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 70
    :cond_6
    const/16 v8, 0x47

    if-ne v1, v8, :cond_7

    const/16 v8, 0x45

    if-ne v4, v8, :cond_7

    const/16 v8, 0x4f

    if-ne v5, v8, :cond_7

    const/16 v8, 0x42

    if-ne v6, v8, :cond_7

    .line 1193
    :try_start_1
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/j/k;->d()I

    move-result v1

    .line 1194
    invoke-static {v1}, Lcom/google/android/exoplayer2/e/a/d;->b(I)Ljava/lang/String;

    move-result-object v4

    .line 1196
    add-int/lit8 v5, v7, -0x1

    new-array v5, v5, [B

    .line 1197
    const/4 v6, 0x0

    add-int/lit8 v8, v7, -0x1

    invoke-virtual {v3, v5, v6, v8}, Lcom/google/android/exoplayer2/j/k;->a([BII)V

    .line 1199
    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/google/android/exoplayer2/e/a/d;->c([BI)I

    move-result v6

    .line 1200
    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "ISO-8859-1"

    invoke-direct {v8, v5, v9, v6, v10}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 1202
    add-int/lit8 v6, v6, 0x1

    .line 1203
    invoke-static {v5, v6, v1}, Lcom/google/android/exoplayer2/e/a/d;->a([BII)I

    move-result v9

    .line 1204
    new-instance v10, Ljava/lang/String;

    sub-int v11, v9, v6

    invoke-direct {v10, v5, v6, v11, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 1207
    invoke-static {v1}, Lcom/google/android/exoplayer2/e/a/d;->a(I)I

    move-result v6

    add-int/2addr v6, v9

    .line 1208
    invoke-static {v5, v6, v1}, Lcom/google/android/exoplayer2/e/a/d;->a([BII)I

    move-result v9

    .line 1209
    new-instance v11, Ljava/lang/String;

    sub-int v12, v9, v6

    invoke-direct {v11, v5, v6, v12, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 1212
    invoke-static {v1}, Lcom/google/android/exoplayer2/e/a/d;->a(I)I

    move-result v1

    add-int/2addr v1, v9

    .line 1213
    array-length v4, v5

    invoke-static {v5, v1, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    .line 1215
    new-instance v1, Lcom/google/android/exoplayer2/e/a/c;

    invoke-direct {v1, v8, v10, v11, v4}, Lcom/google/android/exoplayer2/e/a/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    goto/16 :goto_1

    .line 72
    :cond_7
    const/16 v8, 0x41

    if-ne v1, v8, :cond_8

    const/16 v8, 0x50

    if-ne v4, v8, :cond_8

    const/16 v8, 0x49

    if-ne v5, v8, :cond_8

    const/16 v8, 0x43

    if-ne v6, v8, :cond_8

    .line 1220
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/j/k;->d()I

    move-result v1

    .line 1221
    invoke-static {v1}, Lcom/google/android/exoplayer2/e/a/d;->b(I)Ljava/lang/String;

    move-result-object v4

    .line 1223
    add-int/lit8 v5, v7, -0x1

    new-array v5, v5, [B

    .line 1224
    const/4 v6, 0x0

    add-int/lit8 v8, v7, -0x1

    invoke-virtual {v3, v5, v6, v8}, Lcom/google/android/exoplayer2/j/k;->a([BII)V

    .line 1226
    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/google/android/exoplayer2/e/a/d;->c([BI)I

    move-result v6

    .line 1227
    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "ISO-8859-1"

    invoke-direct {v8, v5, v9, v6, v10}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 1229
    add-int/lit8 v9, v6, 0x1

    aget-byte v9, v5, v9

    and-int/lit16 v9, v9, 0xff

    .line 1231
    add-int/lit8 v6, v6, 0x2

    .line 1232
    invoke-static {v5, v6, v1}, Lcom/google/android/exoplayer2/e/a/d;->a([BII)I

    move-result v10

    .line 1233
    new-instance v11, Ljava/lang/String;

    sub-int v12, v10, v6

    invoke-direct {v11, v5, v6, v12, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 1236
    invoke-static {v1}, Lcom/google/android/exoplayer2/e/a/d;->a(I)I

    move-result v1

    add-int/2addr v1, v10

    .line 1237
    array-length v4, v5

    invoke-static {v5, v1, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    .line 1239
    new-instance v1, Lcom/google/android/exoplayer2/e/a/a;

    invoke-direct {v1, v8, v11, v9, v4}, Lcom/google/android/exoplayer2/e/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;I[B)V

    goto/16 :goto_1

    .line 74
    :cond_8
    const/16 v8, 0x54

    if-ne v1, v8, :cond_9

    .line 75
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v9, "%c%c%c%c"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v10, v11

    const/4 v1, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v10, v1

    const/4 v1, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v10, v1

    const/4 v1, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v10, v1

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1244
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/j/k;->d()I

    move-result v1

    .line 1245
    invoke-static {v1}, Lcom/google/android/exoplayer2/e/a/d;->b(I)Ljava/lang/String;

    move-result-object v5

    .line 1247
    add-int/lit8 v6, v7, -0x1

    new-array v6, v6, [B

    .line 1248
    const/4 v8, 0x0

    add-int/lit8 v9, v7, -0x1

    invoke-virtual {v3, v6, v8, v9}, Lcom/google/android/exoplayer2/j/k;->a([BII)V

    .line 1250
    const/4 v8, 0x0

    invoke-static {v6, v8, v1}, Lcom/google/android/exoplayer2/e/a/d;->a([BII)I

    move-result v1

    .line 1251
    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v8, v6, v9, v1, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 1253
    new-instance v1, Lcom/google/android/exoplayer2/e/a/g;

    invoke-direct {v1, v4, v8}, Lcom/google/android/exoplayer2/e/a/g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 78
    :cond_9
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v9, "%c%c%c%c"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v10, v11

    const/4 v1, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v10, v1

    const/4 v1, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v10, v1

    const/4 v1, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v10, v1

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1258
    new-array v5, v7, [B

    .line 1259
    const/4 v1, 0x0

    invoke-virtual {v3, v5, v1, v7}, Lcom/google/android/exoplayer2/j/k;->a([BII)V

    .line 1261
    new-instance v1, Lcom/google/android/exoplayer2/e/a/b;

    invoke-direct {v1, v4, v5}, Lcom/google/android/exoplayer2/e/a/b;-><init>(Ljava/lang/String;[B)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 88
    :cond_a
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static c([BI)I
    .locals 1

    .prologue
    .line 111
    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    .line 112
    aget-byte v0, p0, p1

    if-nez v0, :cond_0

    .line 116
    :goto_1
    return p1

    .line 111
    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 116
    :cond_1
    array-length p1, p0

    goto :goto_1
.end method


# virtual methods
.method public final synthetic a([BI)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/e/b;
        }
    .end annotation

    .prologue
    .line 33
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/e/a/d;->b([BI)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 42
    const-string/jumbo v0, "application/id3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
