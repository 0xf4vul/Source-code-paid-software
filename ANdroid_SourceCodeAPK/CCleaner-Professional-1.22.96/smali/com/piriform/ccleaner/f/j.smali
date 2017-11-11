.class public final Lcom/piriform/ccleaner/f/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/piriform/ccleaner/f/j$a;,
        Lcom/piriform/ccleaner/f/j$c;,
        Lcom/piriform/ccleaner/f/j$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/io/File;

.field public final b:Z

.field public final c:J

.field public final d:I

.field public final e:I

.field public f:Z

.field public g:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/io/File;ZJIIZ)V
    .locals 1

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p1, p0, Lcom/piriform/ccleaner/f/j;->a:Ljava/io/File;

    .line 132
    iput-boolean p2, p0, Lcom/piriform/ccleaner/f/j;->b:Z

    .line 133
    iput-wide p3, p0, Lcom/piriform/ccleaner/f/j;->c:J

    .line 134
    iput p5, p0, Lcom/piriform/ccleaner/f/j;->d:I

    .line 135
    iput p6, p0, Lcom/piriform/ccleaner/f/j;->e:I

    .line 136
    iput-boolean p7, p0, Lcom/piriform/ccleaner/f/j;->f:Z

    .line 137
    return-void
.end method

.method static synthetic a(Lcom/piriform/ccleaner/f/j;Lcom/piriform/ccleaner/f/j;)I
    .locals 2

    .prologue
    .line 22
    .line 8265
    iget-boolean v0, p0, Lcom/piriform/ccleaner/f/j;->b:Z

    .line 9265
    iget-boolean v1, p1, Lcom/piriform/ccleaner/f/j;->b:Z

    .line 8201
    if-eq v0, v1, :cond_1

    .line 8202
    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 8205
    :cond_1
    const/4 v0, 0x0

    .line 22
    goto :goto_0
.end method

.method private static a(Ljava/io/File;Lcom/piriform/ccleaner/f/i;)Lcom/piriform/ccleaner/f/h;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 65
    sget-object v0, Lcom/piriform/ccleaner/f/h;->a:Lcom/piriform/ccleaner/f/h;

    .line 85
    :cond_0
    :goto_0
    return-object v0

    .line 69
    :cond_1
    invoke-static {p0}, Lcom/piriform/ccleaner/core/b/f;->a(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 70
    sget-object v0, Lcom/piriform/ccleaner/f/h;->a:Lcom/piriform/ccleaner/f/h;

    .line 76
    :goto_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    new-instance v2, Ljava/util/ArrayList;

    .line 1065
    iget-object v1, v0, Lcom/piriform/ccleaner/f/h;->d:Ljava/util/List;

    .line 77
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 78
    invoke-static {p0}, Lcom/piriform/ccleaner/f/j;->a(Ljava/io/File;)Lcom/piriform/ccleaner/f/j;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    new-instance v1, Lcom/piriform/ccleaner/f/h;

    .line 2037
    iget-wide v4, v0, Lcom/piriform/ccleaner/f/h;->b:J

    .line 2041
    iget-object v0, v0, Lcom/piriform/ccleaner/f/h;->c:Ljava/util/List;

    .line 80
    invoke-direct {v1, v4, v5, v0, v2}, Lcom/piriform/ccleaner/f/h;-><init>(JLjava/util/List;Ljava/util/List;)V

    move-object v0, v1

    .line 81
    goto :goto_0

    .line 72
    :cond_2
    invoke-static {p0, p1}, Lcom/piriform/ccleaner/f/j;->b(Ljava/io/File;Lcom/piriform/ccleaner/f/i;)Lcom/piriform/ccleaner/f/h;

    move-result-object v0

    goto :goto_1
.end method

.method public static a(Ljava/io/File;)Lcom/piriform/ccleaner/f/j;
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 40
    new-instance v1, Lcom/piriform/ccleaner/f/j;

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    move-object v2, p0

    move v7, v6

    move v8, v6

    invoke-direct/range {v1 .. v8}, Lcom/piriform/ccleaner/f/j;-><init>(Ljava/io/File;ZJIIZ)V

    return-object v1
.end method

.method public static a(Ljava/io/File;JZ)Lcom/piriform/ccleaner/f/j;
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 53
    new-instance v1, Lcom/piriform/ccleaner/f/j;

    const/4 v6, 0x1

    move-object v2, p0

    move-wide v4, p1

    move v7, v3

    move v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/piriform/ccleaner/f/j;-><init>(Ljava/io/File;ZJIIZ)V

    return-object v1
.end method

.method private static b(Ljava/io/File;Lcom/piriform/ccleaner/f/i;)Lcom/piriform/ccleaner/f/h;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 91
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    .line 92
    :cond_0
    sget-object v0, Lcom/piriform/ccleaner/f/h;->a:Lcom/piriform/ccleaner/f/h;

    .line 127
    :goto_0
    return-object v0

    .line 95
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 96
    if-nez v4, :cond_2

    .line 97
    sget-object v0, Lcom/piriform/ccleaner/f/h;->a:Lcom/piriform/ccleaner/f/h;

    goto :goto_0

    .line 100
    :cond_2
    const-wide/16 v2, 0x0

    .line 102
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 103
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 105
    array-length v7, v4

    move v11, v0

    move-wide v0, v2

    move v2, v11

    :goto_1
    if-ge v2, v7, :cond_6

    aget-object v3, v4, v2

    .line 107
    if-eqz p1, :cond_4

    :try_start_0
    invoke-static {v3}, Lcom/piriform/ccleaner/f/j;->b(Ljava/io/File;)Lcom/piriform/ccleaner/f/j;

    move-result-object v8

    invoke-interface {p1, v8}, Lcom/piriform/ccleaner/f/i;->a(Lcom/piriform/ccleaner/f/j;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 105
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 111
    :cond_4
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v8

    .line 112
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 113
    invoke-static {v3, p1}, Lcom/piriform/ccleaner/f/j;->a(Ljava/io/File;Lcom/piriform/ccleaner/f/i;)Lcom/piriform/ccleaner/f/h;

    move-result-object v3

    .line 3037
    iget-wide v8, v3, Lcom/piriform/ccleaner/f/h;->b:J

    .line 114
    add-long/2addr v0, v8

    .line 3041
    iget-object v8, v3, Lcom/piriform/ccleaner/f/h;->c:Ljava/util/List;

    .line 115
    invoke-interface {v5, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3065
    iget-object v3, v3, Lcom/piriform/ccleaner/f/h;->d:Ljava/util/List;

    .line 116
    invoke-interface {v6, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :catch_0
    move-exception v3

    goto :goto_2

    .line 117
    :cond_5
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 118
    add-long/2addr v0, v8

    .line 119
    const/4 v10, 0x0

    invoke-static {v3, v8, v9, v10}, Lcom/piriform/ccleaner/f/j;->a(Ljava/io/File;JZ)Lcom/piriform/ccleaner/f/j;

    move-result-object v3

    .line 120
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 127
    :cond_6
    new-instance v2, Lcom/piriform/ccleaner/f/h;

    invoke-direct {v2, v0, v1, v5, v6}, Lcom/piriform/ccleaner/f/h;-><init>(JLjava/util/List;Ljava/util/List;)V

    move-object v0, v2

    goto :goto_0
.end method

.method public static b(Ljava/io/File;)Lcom/piriform/ccleaner/f/j;
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 57
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 58
    new-instance v1, Lcom/piriform/ccleaner/f/j;

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    const/4 v6, 0x1

    move-object v2, p0

    move v8, v7

    invoke-direct/range {v1 .. v8}, Lcom/piriform/ccleaner/f/j;-><init>(Ljava/io/File;ZJIIZ)V

    return-object v1
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 144
    .line 4265
    iget-boolean v0, p0, Lcom/piriform/ccleaner/f/j;->b:Z

    .line 144
    if-eqz v0, :cond_0

    const v0, 0x7f0200ec

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/piriform/ccleaner/f/j;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/piriform/ccleaner/f;->a(Ljava/lang/String;)Lcom/piriform/ccleaner/f;

    move-result-object v0

    .line 5033
    iget v0, v0, Lcom/piriform/ccleaner/f;->k:I

    goto :goto_0
.end method

.method public final a(Lcom/piriform/ccleaner/f/i;)Lcom/piriform/ccleaner/f/h;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 276
    iget-object v0, p0, Lcom/piriform/ccleaner/f/j;->a:Ljava/io/File;

    invoke-static {v0, p1}, Lcom/piriform/ccleaner/f/j;->a(Ljava/io/File;Lcom/piriform/ccleaner/f/i;)Lcom/piriform/ccleaner/f/h;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/piriform/ccleaner/f/l;)Z
    .locals 1

    .prologue
    .line 251
    .line 5217
    iget-object v0, p0, Lcom/piriform/ccleaner/f/j;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 251
    invoke-interface {p1, v0}, Lcom/piriform/ccleaner/f/l;->a(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/piriform/ccleaner/f/j;->f:Z

    .line 252
    iget-boolean v0, p0, Lcom/piriform/ccleaner/f/j;->f:Z

    return v0
.end method

.method public final a(Lcom/piriform/ccleaner/v/b;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/piriform/ccleaner/v/b",
            "<",
            "Ljava/io/File;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 140
    .line 3296
    iget-object v0, p0, Lcom/piriform/ccleaner/f/j;->a:Ljava/io/File;

    .line 140
    invoke-interface {p1, v0}, Lcom/piriform/ccleaner/v/b;->a(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 222
    iget-object v0, p0, Lcom/piriform/ccleaner/f/j;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 223
    const/4 v1, 0x0

    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 288
    instance-of v0, p1, Lcom/piriform/ccleaner/f/j;

    if-eqz v0, :cond_0

    .line 6213
    iget-object v0, p0, Lcom/piriform/ccleaner/f/j;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 288
    check-cast p1, Lcom/piriform/ccleaner/f/j;

    .line 7213
    iget-object v1, p1, Lcom/piriform/ccleaner/f/j;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 288
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/piriform/ccleaner/f/j;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->hashCode()I

    move-result v0

    xor-int/lit8 v0, v0, 0x25

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "FileInfo:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/piriform/ccleaner/f/j;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
