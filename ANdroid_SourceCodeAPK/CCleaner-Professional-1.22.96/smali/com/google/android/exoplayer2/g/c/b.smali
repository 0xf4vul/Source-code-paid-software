.class final Lcom/google/android/exoplayer2/g/c/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Z

.field public final d:J

.field public final e:J

.field public final f:Lcom/google/android/exoplayer2/g/c/d;

.field public final g:Ljava/lang/String;

.field private final h:[Ljava/lang/String;

.field private final i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/g/c/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;JJLcom/google/android/exoplayer2/g/c/d;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lcom/google/android/exoplayer2/g/c/b;->a:Ljava/lang/String;

    .line 104
    iput-object p2, p0, Lcom/google/android/exoplayer2/g/c/b;->b:Ljava/lang/String;

    .line 105
    iput-object p7, p0, Lcom/google/android/exoplayer2/g/c/b;->f:Lcom/google/android/exoplayer2/g/c/d;

    .line 106
    iput-object p8, p0, Lcom/google/android/exoplayer2/g/c/b;->h:[Ljava/lang/String;

    .line 107
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/g/c/b;->c:Z

    .line 108
    iput-wide p3, p0, Lcom/google/android/exoplayer2/g/c/b;->d:J

    .line 109
    iput-wide p5, p0, Lcom/google/android/exoplayer2/g/c/b;->e:J

    .line 110
    invoke-static {p9}, Lcom/google/android/exoplayer2/j/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer2/g/c/b;->g:Ljava/lang/String;

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/g/c/b;->i:Ljava/util/HashMap;

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/g/c/b;->j:Ljava/util/HashMap;

    .line 113
    return-void

    .line 107
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;
    .locals 7

    .prologue
    const/16 v6, 0xa

    const/4 v2, 0x0

    const/16 v5, 0x20

    .line 252
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    move v3, v2

    .line 253
    :goto_0
    if-ge v3, v1, :cond_1

    .line 254
    invoke-virtual {p0, v3}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_9

    .line 255
    add-int/lit8 v0, v3, 0x1

    .line 256
    :goto_1
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    if-ge v0, v4, :cond_0

    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_0

    .line 257
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 259
    :cond_0
    add-int/lit8 v4, v3, 0x1

    sub-int/2addr v0, v4

    .line 260
    if-lez v0, :cond_9

    .line 261
    add-int v4, v3, v0

    invoke-virtual {p0, v3, v4}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 262
    sub-int v0, v1, v0

    .line 253
    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_0

    .line 267
    :cond_1
    if-lez v1, :cond_2

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_2

    .line 268
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 269
    add-int/lit8 v1, v1, -0x1

    :cond_2
    move v0, v1

    move v1, v2

    .line 271
    :goto_3
    add-int/lit8 v3, v0, -0x1

    if-ge v1, v3, :cond_4

    .line 272
    invoke-virtual {p0, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v3

    if-ne v3, v6, :cond_3

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_3

    .line 273
    add-int/lit8 v3, v1, 0x1

    add-int/lit8 v4, v1, 0x2

    invoke-virtual {p0, v3, v4}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 274
    add-int/lit8 v0, v0, -0x1

    .line 271
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 278
    :cond_4
    if-lez v0, :cond_5

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_5

    .line 279
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 280
    add-int/lit8 v0, v0, -0x1

    :cond_5
    move v1, v2

    .line 282
    :goto_4
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_7

    .line 283
    invoke-virtual {p0, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_6

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v2

    if-ne v2, v6, :cond_6

    .line 284
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 285
    add-int/lit8 v0, v0, -0x1

    .line 282
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 289
    :cond_7
    if-lez v0, :cond_8

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    if-ne v1, v6, :cond_8

    .line 290
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 293
    :cond_8
    return-object p0

    :cond_9
    move v0, v1

    goto :goto_2
.end method

.method private static a(Ljava/lang/String;Ljava/util/Map;)Landroid/text/SpannableStringBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/text/SpannableStringBuilder;",
            ">;)",
            "Landroid/text/SpannableStringBuilder;"
        }
    .end annotation

    .prologue
    .line 221
    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    :cond_0
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/SpannableStringBuilder;

    return-object v0
.end method

.method private a(I)Lcom/google/android/exoplayer2/g/c/b;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/android/exoplayer2/g/c/b;->k:Ljava/util/List;

    if-nez v0, :cond_0

    .line 131
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/g/c/b;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/g/c/b;

    return-object v0
.end method

.method private a(Ljava/util/TreeSet;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v2, 0x0

    .line 152
    const-string/jumbo v0, "p"

    iget-object v1, p0, Lcom/google/android/exoplayer2/g/c/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 153
    if-nez p2, :cond_0

    if-eqz v4, :cond_2

    .line 154
    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/g/c/b;->d:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_1

    .line 155
    iget-wide v0, p0, Lcom/google/android/exoplayer2/g/c/b;->d:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 157
    :cond_1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/g/c/b;->e:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_2

    .line 158
    iget-wide v0, p0, Lcom/google/android/exoplayer2/g/c/b;->e:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 161
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/g/c/b;->k:Ljava/util/List;

    if-nez v0, :cond_4

    .line 167
    :cond_3
    return-void

    :cond_4
    move v1, v2

    .line 164
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/g/c/b;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 165
    iget-object v0, p0, Lcom/google/android/exoplayer2/g/c/b;->k:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/g/c/b;

    if-nez p2, :cond_5

    if-eqz v4, :cond_6

    :cond_5
    const/4 v3, 0x1

    :goto_1
    invoke-direct {v0, p1, v3}, Lcom/google/android/exoplayer2/g/c/b;->a(Ljava/util/TreeSet;Z)V

    .line 164
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_6
    move v3, v2

    .line 165
    goto :goto_1
.end method

.method private b()I
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/android/exoplayer2/g/c/b;->k:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/g/c/b;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method final a(JZLjava/lang/String;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/text/SpannableStringBuilder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/android/exoplayer2/g/c/b;->i:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 190
    iget-object v0, p0, Lcom/google/android/exoplayer2/g/c/b;->j:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 191
    iget-object v5, p0, Lcom/google/android/exoplayer2/g/c/b;->g:Ljava/lang/String;

    .line 192
    const-string/jumbo v0, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v5, p4

    .line 195
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/g/c/b;->c:Z

    if-eqz v0, :cond_2

    if-eqz p3, :cond_2

    .line 196
    invoke-static {v5, p5}, Lcom/google/android/exoplayer2/g/c/b;->a(Ljava/lang/String;Ljava/util/Map;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/g/c/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 217
    :cond_1
    :goto_0
    return-void

    .line 197
    :cond_2
    const-string/jumbo v0, "br"

    iget-object v1, p0, Lcom/google/android/exoplayer2/g/c/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p3, :cond_3

    .line 198
    invoke-static {v5, p5}, Lcom/google/android/exoplayer2/g/c/b;->a(Ljava/lang/String;Ljava/util/Map;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 199
    :cond_3
    const-string/jumbo v0, "metadata"

    iget-object v1, p0, Lcom/google/android/exoplayer2/g/c/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1116
    iget-wide v0, p0, Lcom/google/android/exoplayer2/g/c/b;->d:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    iget-wide v0, p0, Lcom/google/android/exoplayer2/g/c/b;->e:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_7

    :cond_4
    iget-wide v0, p0, Lcom/google/android/exoplayer2/g/c/b;->d:J

    cmp-long v0, v0, p1

    if-gtz v0, :cond_5

    iget-wide v0, p0, Lcom/google/android/exoplayer2/g/c/b;->e:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_7

    :cond_5
    iget-wide v0, p0, Lcom/google/android/exoplayer2/g/c/b;->d:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    iget-wide v0, p0, Lcom/google/android/exoplayer2/g/c/b;->e:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_7

    :cond_6
    iget-wide v0, p0, Lcom/google/android/exoplayer2/g/c/b;->d:J

    cmp-long v0, v0, p1

    if-gtz v0, :cond_8

    iget-wide v0, p0, Lcom/google/android/exoplayer2/g/c/b;->e:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_8

    :cond_7
    const/4 v0, 0x1

    .line 201
    :goto_1
    if-eqz v0, :cond_1

    .line 202
    const-string/jumbo v0, "p"

    iget-object v1, p0, Lcom/google/android/exoplayer2/g/c/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 203
    invoke-interface {p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 204
    iget-object v2, p0, Lcom/google/android/exoplayer2/g/c/b;->i:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1116
    :cond_8
    const/4 v0, 0x0

    goto :goto_1

    .line 206
    :cond_9
    const/4 v0, 0x0

    :goto_3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/g/c/b;->b()I

    move-result v1

    if-ge v0, v1, :cond_c

    .line 207
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/g/c/b;->a(I)Lcom/google/android/exoplayer2/g/c/b;

    move-result-object v1

    if-nez p3, :cond_a

    if-eqz v7, :cond_b

    :cond_a
    const/4 v4, 0x1

    :goto_4
    move-wide v2, p1

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/g/c/b;->a(JZLjava/lang/String;Ljava/util/Map;)V

    .line 206
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 207
    :cond_b
    const/4 v4, 0x0

    goto :goto_4

    .line 210
    :cond_c
    if-eqz v7, :cond_e

    .line 211
    invoke-static {v5, p5}, Lcom/google/android/exoplayer2/g/c/b;->a(Ljava/lang/String;Ljava/util/Map;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    .line 1120
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 1121
    :goto_5
    if-ltz v0, :cond_d

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_d

    .line 1122
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 1124
    :cond_d
    if-ltz v0, :cond_e

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    const/16 v2, 0xa

    if-eq v0, v2, :cond_e

    .line 1125
    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 213
    :cond_e
    invoke-interface {p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 214
    iget-object v2, p0, Lcom/google/android/exoplayer2/g/c/b;->j:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6
.end method

.method public final a(Lcom/google/android/exoplayer2/g/c/b;)V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/android/exoplayer2/g/c/b;->k:Ljava/util/List;

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/g/c/b;->k:Ljava/util/List;

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/g/c/b;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    return-void
.end method

.method final a(Ljava/util/Map;Ljava/util/Map;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/g/c/d;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/text/SpannableStringBuilder;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v12, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v11, 0x21

    .line 229
    iget-object v0, p0, Lcom/google/android/exoplayer2/g/c/b;->j:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 230
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 231
    iget-object v2, p0, Lcom/google/android/exoplayer2/g/c/b;->i:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/exoplayer2/g/c/b;->i:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 232
    :goto_0
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/SpannableStringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1241
    if-eq v2, v8, :cond_12

    .line 1242
    iget-object v5, p0, Lcom/google/android/exoplayer2/g/c/b;->f:Lcom/google/android/exoplayer2/g/c/d;

    iget-object v9, p0, Lcom/google/android/exoplayer2/g/c/b;->h:[Ljava/lang/String;

    .line 2039
    if-nez v5, :cond_6

    if-nez v9, :cond_6

    .line 2041
    const/4 v0, 0x0

    move-object v5, v0

    .line 1243
    :cond_1
    :goto_1
    if-eqz v5, :cond_12

    .line 2069
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/g/c/d;->a()I

    move-result v0

    if-eq v0, v12, :cond_2

    .line 2070
    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/g/c/d;->a()I

    move-result v6

    invoke-direct {v0, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v1, v0, v2, v8, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3098
    :cond_2
    iget v0, v5, Lcom/google/android/exoplayer2/g/c/d;->f:I

    if-ne v0, v4, :cond_a

    move v0, v4

    .line 2073
    :goto_2
    if-eqz v0, :cond_3

    .line 2074
    new-instance v0, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v0}, Landroid/text/style/StrikethroughSpan;-><init>()V

    invoke-virtual {v1, v0, v2, v8, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3108
    :cond_3
    iget v0, v5, Lcom/google/android/exoplayer2/g/c/d;->g:I

    if-ne v0, v4, :cond_b

    move v0, v4

    .line 2076
    :goto_3
    if-eqz v0, :cond_4

    .line 2077
    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v1, v0, v2, v8, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3154
    :cond_4
    iget-boolean v0, v5, Lcom/google/android/exoplayer2/g/c/d;->c:Z

    .line 2079
    if-eqz v0, :cond_d

    .line 2080
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    .line 4140
    iget-boolean v6, v5, Lcom/google/android/exoplayer2/g/c/d;->c:Z

    if-nez v6, :cond_c

    .line 4141
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Font color has not been defined."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    move v2, v3

    .line 231
    goto :goto_0

    .line 2042
    :cond_6
    if-nez v5, :cond_7

    array-length v0, v9

    if-ne v0, v4, :cond_7

    .line 2044
    aget-object v0, v9, v3

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/g/c/d;

    move-object v5, v0

    goto :goto_1

    .line 2045
    :cond_7
    if-nez v5, :cond_8

    array-length v0, v9

    if-le v0, v4, :cond_8

    .line 2047
    new-instance v5, Lcom/google/android/exoplayer2/g/c/d;

    invoke-direct {v5}, Lcom/google/android/exoplayer2/g/c/d;-><init>()V

    .line 2048
    array-length v10, v9

    move v6, v3

    :goto_4
    if-ge v6, v10, :cond_1

    aget-object v0, v9, v6

    .line 2049
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/g/c/d;

    invoke-virtual {v5, v0}, Lcom/google/android/exoplayer2/g/c/d;->a(Lcom/google/android/exoplayer2/g/c/d;)Lcom/google/android/exoplayer2/g/c/d;

    .line 2048
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_4

    .line 2052
    :cond_8
    if-eqz v5, :cond_9

    if-eqz v9, :cond_9

    array-length v0, v9

    if-ne v0, v4, :cond_9

    .line 2054
    aget-object v0, v9, v3

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/g/c/d;

    invoke-virtual {v5, v0}, Lcom/google/android/exoplayer2/g/c/d;->a(Lcom/google/android/exoplayer2/g/c/d;)Lcom/google/android/exoplayer2/g/c/d;

    move-result-object v0

    move-object v5, v0

    goto/16 :goto_1

    .line 2055
    :cond_9
    if-eqz v5, :cond_1

    if-eqz v9, :cond_1

    array-length v0, v9

    if-le v0, v4, :cond_1

    .line 2057
    array-length v10, v9

    move v6, v3

    :goto_5
    if-ge v6, v10, :cond_1

    aget-object v0, v9, v6

    .line 2058
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/g/c/d;

    invoke-virtual {v5, v0}, Lcom/google/android/exoplayer2/g/c/d;->a(Lcom/google/android/exoplayer2/g/c/d;)Lcom/google/android/exoplayer2/g/c/d;

    .line 2057
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_5

    :cond_a
    move v0, v3

    .line 3098
    goto/16 :goto_2

    :cond_b
    move v0, v3

    .line 3108
    goto :goto_3

    .line 4143
    :cond_c
    iget v6, v5, Lcom/google/android/exoplayer2/g/c/d;->b:I

    .line 2080
    invoke-direct {v0, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1, v0, v2, v8, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 4171
    :cond_d
    iget-boolean v0, v5, Lcom/google/android/exoplayer2/g/c/d;->e:Z

    .line 2083
    if-eqz v0, :cond_f

    .line 2084
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    .line 5158
    iget-boolean v6, v5, Lcom/google/android/exoplayer2/g/c/d;->e:Z

    if-nez v6, :cond_e

    .line 5159
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Background color has not been defined."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5161
    :cond_e
    iget v6, v5, Lcom/google/android/exoplayer2/g/c/d;->d:I

    .line 2084
    invoke-direct {v0, v6}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-virtual {v1, v0, v2, v8, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 6130
    :cond_f
    iget-object v0, v5, Lcom/google/android/exoplayer2/g/c/d;->a:Ljava/lang/String;

    .line 2087
    if-eqz v0, :cond_10

    .line 2088
    new-instance v0, Landroid/text/style/TypefaceSpan;

    .line 7130
    iget-object v6, v5, Lcom/google/android/exoplayer2/g/c/d;->a:Ljava/lang/String;

    .line 2088
    invoke-direct {v0, v6}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2, v8, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 7240
    :cond_10
    iget-object v0, v5, Lcom/google/android/exoplayer2/g/c/d;->n:Landroid/text/Layout$Alignment;

    .line 2091
    if-eqz v0, :cond_11

    .line 2092
    new-instance v0, Landroid/text/style/AlignmentSpan$Standard;

    .line 8240
    iget-object v6, v5, Lcom/google/android/exoplayer2/g/c/d;->n:Landroid/text/Layout$Alignment;

    .line 2092
    invoke-direct {v0, v6}, Landroid/text/style/AlignmentSpan$Standard;-><init>(Landroid/text/Layout$Alignment;)V

    invoke-virtual {v1, v0, v2, v8, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 8260
    :cond_11
    iget v0, v5, Lcom/google/android/exoplayer2/g/c/d;->j:I

    .line 2095
    if-eq v0, v12, :cond_12

    .line 9260
    iget v0, v5, Lcom/google/android/exoplayer2/g/c/d;->j:I

    .line 2096
    packed-switch v0, :pswitch_data_0

    :cond_12
    :goto_6
    move v0, v3

    .line 233
    :goto_7
    invoke-direct {p0}, Lcom/google/android/exoplayer2/g/c/b;->b()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 234
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/g/c/b;->a(I)Lcom/google/android/exoplayer2/g/c/b;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/google/android/exoplayer2/g/c/b;->a(Ljava/util/Map;Ljava/util/Map;)V

    .line 233
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 2098
    :pswitch_0
    new-instance v0, Landroid/text/style/AbsoluteSizeSpan;

    .line 9264
    iget v5, v5, Lcom/google/android/exoplayer2/g/c/d;->k:F

    .line 2098
    float-to-int v5, v5

    invoke-direct {v0, v5, v4}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {v1, v0, v2, v8, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_6

    .line 2102
    :pswitch_1
    new-instance v0, Landroid/text/style/RelativeSizeSpan;

    .line 10264
    iget v5, v5, Lcom/google/android/exoplayer2/g/c/d;->k:F

    .line 2102
    invoke-direct {v0, v5}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v1, v0, v2, v8, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_6

    .line 2106
    :pswitch_2
    new-instance v0, Landroid/text/style/RelativeSizeSpan;

    .line 11264
    iget v5, v5, Lcom/google/android/exoplayer2/g/c/d;->k:F

    .line 2106
    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v5, v6

    invoke-direct {v0, v5}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v1, v0, v2, v8, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_6

    .line 237
    :cond_13
    return-void

    .line 2096
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final a()[J
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 141
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 142
    invoke-direct {p0, v1, v0}, Lcom/google/android/exoplayer2/g/c/b;->a(Ljava/util/TreeSet;Z)V

    .line 143
    invoke-virtual {v1}, Ljava/util/TreeSet;->size()I

    move-result v2

    new-array v2, v2, [J

    .line 145
    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 146
    add-int/lit8 v0, v1, 0x1

    aput-wide v4, v2, v1

    move v1, v0

    .line 147
    goto :goto_0

    .line 148
    :cond_0
    return-object v2
.end method
