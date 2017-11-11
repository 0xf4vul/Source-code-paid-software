.class final Lcom/google/a/k;
.super Lcom/google/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/a/k$a;
    }
.end annotation


# instance fields
.field protected final c:[B

.field private d:I


# direct methods
.method constructor <init>([B)V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/google/a/c;-><init>()V

    .line 234
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/a/k;->d:I

    .line 63
    iput-object p1, p0, Lcom/google/a/k;->c:[B

    .line 64
    return-void
.end method


# virtual methods
.method public final a(I)B
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/a/k;->c:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method protected final a(III)I
    .locals 10

    .prologue
    const/16 v9, -0x20

    const/16 v4, -0x60

    const/4 v2, -0x1

    const/16 v8, -0x41

    .line 162
    add-int/lit8 v1, p2, 0x0

    .line 163
    iget-object v5, p0, Lcom/google/a/k;->c:[B

    add-int v6, v1, p3

    .line 2145
    if-eqz p1, :cond_d

    .line 2153
    if-lt v1, v6, :cond_0

    .line 2223
    :goto_0
    return p1

    .line 2156
    :cond_0
    int-to-byte v7, p1

    .line 2158
    if-ge v7, v9, :cond_2

    .line 2163
    const/16 v0, -0x3e

    if-lt v7, v0, :cond_1

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v5, v1

    if-le v1, v8, :cond_e

    :cond_1
    move p1, v2

    .line 2166
    goto :goto_0

    .line 2168
    :cond_2
    const/16 v0, -0x10

    if-ge v7, v0, :cond_8

    .line 2172
    shr-int/lit8 v0, p1, 0x8

    xor-int/lit8 v0, v0, -0x1

    int-to-byte v0, v0

    .line 2173
    if-nez v0, :cond_4

    .line 2174
    add-int/lit8 v3, v1, 0x1

    aget-byte v0, v5, v1

    .line 2175
    if-lt v3, v6, :cond_3

    .line 2176
    invoke-static {v7, v0}, Lcom/google/a/q;->a(II)I

    move-result p1

    goto :goto_0

    :cond_3
    move v1, v3

    .line 2179
    :cond_4
    if-gt v0, v8, :cond_7

    if-ne v7, v9, :cond_5

    if-lt v0, v4, :cond_7

    :cond_5
    const/16 v3, -0x13

    if-ne v7, v3, :cond_6

    if-ge v0, v4, :cond_7

    :cond_6
    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v5, v1

    if-le v1, v8, :cond_e

    :cond_7
    move p1, v2

    .line 2186
    goto :goto_0

    .line 2192
    :cond_8
    shr-int/lit8 v0, p1, 0x8

    xor-int/lit8 v0, v0, -0x1

    int-to-byte v3, v0

    .line 2193
    const/4 v0, 0x0

    .line 2194
    if-nez v3, :cond_9

    .line 2195
    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v5, v1

    .line 2196
    if-lt v3, v6, :cond_f

    .line 2197
    invoke-static {v7, v1}, Lcom/google/a/q;->a(II)I

    move-result p1

    goto :goto_0

    .line 2200
    :cond_9
    shr-int/lit8 v0, p1, 0x10

    int-to-byte v0, v0

    move v4, v3

    move v3, v1

    .line 2202
    :goto_1
    if-nez v0, :cond_a

    .line 2203
    add-int/lit8 v1, v3, 0x1

    aget-byte v0, v5, v3

    .line 2204
    if-lt v1, v6, :cond_b

    .line 2205
    invoke-static {v7, v4, v0}, Lcom/google/a/q;->a(III)I

    move-result p1

    goto :goto_0

    :cond_a
    move v1, v3

    .line 2213
    :cond_b
    if-gt v4, v8, :cond_c

    shl-int/lit8 v3, v7, 0x1c

    add-int/lit8 v4, v4, 0x70

    add-int/2addr v3, v4

    shr-int/lit8 v3, v3, 0x1e

    if-nez v3, :cond_c

    if-gt v0, v8, :cond_c

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v5, v1

    if-le v1, v8, :cond_e

    :cond_c
    move p1, v2

    .line 2223
    goto :goto_0

    :cond_d
    move v0, v1

    .line 2228
    :cond_e
    invoke-static {v5, v0, v6}, Lcom/google/a/q;->a([BII)I

    move-result p1

    goto :goto_0

    :cond_f
    move v4, v1

    goto :goto_1
.end method

.method public final a()Lcom/google/a/c$a;
    .locals 2

    .prologue
    .line 294
    new-instance v0, Lcom/google/a/k$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/a/k$a;-><init>(Lcom/google/a/k;B)V

    return-object v0
.end method

.method final a(Lcom/google/a/k;II)Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 206
    .line 6076
    iget-object v1, p1, Lcom/google/a/k;->c:[B

    array-length v1, v1

    .line 206
    if-le p3, v1, :cond_0

    .line 207
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Length too large: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 7076
    iget-object v2, p0, Lcom/google/a/k;->c:[B

    array-length v2, v2

    .line 207
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_0
    add-int v1, p2, p3

    .line 8076
    iget-object v2, p1, Lcom/google/a/k;->c:[B

    array-length v2, v2

    .line 210
    if-le v1, v2, :cond_1

    .line 211
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Ran off end of other: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 9076
    iget-object v2, p1, Lcom/google/a/k;->c:[B

    array-length v2, v2

    .line 211
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_1
    iget-object v3, p0, Lcom/google/a/k;->c:[B

    .line 217
    iget-object v4, p1, Lcom/google/a/k;->c:[B

    .line 218
    add-int/lit8 v5, p3, 0x0

    .line 219
    add-int/lit8 v1, p2, 0x0

    move v2, v1

    move v1, v0

    .line 221
    :goto_0
    if-ge v1, v5, :cond_3

    .line 222
    aget-byte v6, v3, v1

    aget-byte v7, v4, v2

    if-eq v6, v7, :cond_2

    .line 226
    :goto_1
    return v0

    .line 221
    :cond_2
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 226
    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/a/k;->c:[B

    array-length v0, v0

    return v0
.end method

.method protected final b(III)I
    .locals 5

    .prologue
    .line 264
    iget-object v1, p0, Lcom/google/a/k;->c:[B

    .line 265
    add-int/lit8 v0, p2, 0x0

    add-int v2, v0, p3

    :goto_0
    if-ge v0, v2, :cond_0

    .line 267
    mul-int/lit8 v3, p1, 0x1f

    aget-byte v4, v1, v0

    add-int p1, v3, v4

    .line 266
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 269
    :cond_0
    return p1
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 148
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/a/k;->c:[B

    const/4 v2, 0x0

    .line 1076
    iget-object v3, p0, Lcom/google/a/k;->c:[B

    array-length v3, v3

    .line 148
    invoke-direct {v0, v1, v2, v3, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v0
.end method

.method protected final b([BIII)V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/a/k;->c:[B

    invoke-static {v0, p2, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 118
    return-void
.end method

.method public final e()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 157
    iget-object v1, p0, Lcom/google/a/k;->c:[B

    .line 2076
    iget-object v2, p0, Lcom/google/a/k;->c:[B

    array-length v2, v2

    .line 157
    add-int/lit8 v2, v2, 0x0

    .line 2122
    invoke-static {v1, v0, v2}, Lcom/google/a/q;->a([BII)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 171
    if-ne p1, p0, :cond_0

    move v0, v1

    .line 188
    :goto_0
    return v0

    .line 174
    :cond_0
    instance-of v0, p1, Lcom/google/a/c;

    if-nez v0, :cond_1

    move v0, v2

    .line 175
    goto :goto_0

    .line 3076
    :cond_1
    iget-object v0, p0, Lcom/google/a/k;->c:[B

    array-length v3, v0

    move-object v0, p1

    .line 178
    check-cast v0, Lcom/google/a/c;

    invoke-virtual {v0}, Lcom/google/a/c;->b()I

    move-result v0

    if-eq v3, v0, :cond_2

    move v0, v2

    .line 179
    goto :goto_0

    .line 4076
    :cond_2
    iget-object v0, p0, Lcom/google/a/k;->c:[B

    array-length v0, v0

    .line 181
    if-nez v0, :cond_3

    move v0, v1

    .line 182
    goto :goto_0

    .line 185
    :cond_3
    instance-of v0, p1, Lcom/google/a/k;

    if-eqz v0, :cond_4

    .line 186
    check-cast p1, Lcom/google/a/k;

    .line 5076
    iget-object v0, p0, Lcom/google/a/k;->c:[B

    array-length v0, v0

    .line 186
    invoke-virtual {p0, p1, v2, v0}, Lcom/google/a/k;->a(Lcom/google/a/k;II)Z

    move-result v0

    goto :goto_0

    .line 187
    :cond_4
    instance-of v0, p1, Lcom/google/a/o;

    if-eqz v0, :cond_5

    .line 188
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 190
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Has a new type of ByteString been created? Found "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final f()Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 277
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/google/a/k;->c:[B

    const/4 v2, 0x0

    .line 11076
    iget-object v3, p0, Lcom/google/a/k;->c:[B

    array-length v3, v3

    .line 277
    invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object v0
.end method

.method public final g()Lcom/google/a/d;
    .locals 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/google/a/k;->c:[B

    .line 12076
    iget-object v1, p0, Lcom/google/a/k;->c:[B

    array-length v1, v1

    .line 285
    invoke-static {v0, v1}, Lcom/google/a/d;->a([BI)Lcom/google/a/d;

    move-result-object v0

    return-object v0
.end method

.method protected final h()I
    .locals 1

    .prologue
    .line 259
    iget v0, p0, Lcom/google/a/k;->d:I

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 244
    iget v0, p0, Lcom/google/a/k;->d:I

    .line 246
    if-nez v0, :cond_1

    .line 10076
    iget-object v0, p0, Lcom/google/a/k;->c:[B

    array-length v0, v0

    .line 248
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v0}, Lcom/google/a/k;->b(III)I

    move-result v0

    .line 249
    if-nez v0, :cond_0

    .line 250
    const/4 v0, 0x1

    .line 252
    :cond_0
    iput v0, p0, Lcom/google/a/k;->d:I

    .line 254
    :cond_1
    return v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/google/a/k;->a()Lcom/google/a/c$a;

    move-result-object v0

    return-object v0
.end method
