.class public final Lcom/piriform/ccleaner/g/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/piriform/ccleaner/g/d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/g/d;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Z

.field public final d:Lcom/piriform/ccleaner/g/d;

.field public final e:Ljava/lang/String;

.field public f:J

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/piriform/ccleaner/g/d$1;

    invoke-direct {v0}, Lcom/piriform/ccleaner/g/d$1;-><init>()V

    sput-object v0, Lcom/piriform/ccleaner/g/d;->a:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>(Lcom/piriform/ccleaner/g/d;Ljava/lang/String;JZ)V
    .locals 7

    .prologue
    .line 91
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/piriform/ccleaner/g/d;-><init>(Lcom/piriform/ccleaner/g/d;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 92
    return-void
.end method

.method private constructor <init>(Lcom/piriform/ccleaner/g/d;Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 2

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/g/d;->b:Ljava/util/List;

    .line 83
    iput-object p1, p0, Lcom/piriform/ccleaner/g/d;->d:Lcom/piriform/ccleaner/g/d;

    .line 84
    iput-object p2, p0, Lcom/piriform/ccleaner/g/d;->g:Ljava/lang/String;

    .line 85
    iput-object p3, p0, Lcom/piriform/ccleaner/g/d;->e:Ljava/lang/String;

    .line 86
    iput-wide p4, p0, Lcom/piriform/ccleaner/g/d;->f:J

    .line 87
    iput-boolean p6, p0, Lcom/piriform/ccleaner/g/d;->c:Z

    .line 88
    return-void
.end method

.method public static a()Lcom/piriform/ccleaner/g/d;
    .locals 7

    .prologue
    .line 53
    new-instance v1, Lcom/piriform/ccleaner/g/d;

    const/4 v2, 0x0

    const-string/jumbo v3, ""

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v1 .. v6}, Lcom/piriform/ccleaner/g/d;-><init>(Lcom/piriform/ccleaner/g/d;Ljava/lang/String;JZ)V

    return-object v1
.end method

.method public static a(Lcom/piriform/ccleaner/g/d;Ljava/io/File;)Lcom/piriform/ccleaner/g/d;
    .locals 7

    .prologue
    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    .line 41
    .line 1095
    iget-object v0, p0, Lcom/piriform/ccleaner/g/d;->d:Lcom/piriform/ccleaner/g/d;

    if-nez v0, :cond_0

    move v0, v6

    .line 41
    :goto_0
    if-eqz v0, :cond_1

    .line 42
    new-instance v0, Lcom/piriform/ccleaner/g/d;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/piriform/ccleaner/g/d;-><init>(Lcom/piriform/ccleaner/g/d;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 44
    :goto_1
    return-object v0

    .line 1095
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 44
    :cond_1
    new-instance v1, Lcom/piriform/ccleaner/g/d;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/piriform/ccleaner/g/d;-><init>(Lcom/piriform/ccleaner/g/d;Ljava/lang/String;JZ)V

    move-object v0, v1

    goto :goto_1
.end method

.method public static a(Lcom/piriform/ccleaner/g/d;Ljava/io/File;J)Lcom/piriform/ccleaner/g/d;
    .locals 8

    .prologue
    .line 49
    new-instance v1, Lcom/piriform/ccleaner/g/d;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    move-object v2, p0

    move-wide v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/piriform/ccleaner/g/d;-><init>(Lcom/piriform/ccleaner/g/d;Ljava/lang/String;JZ)V

    return-object v1
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 57
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 58
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 59
    const-string/jumbo v0, ""

    .line 61
    :goto_0
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/piriform/ccleaner/g/d;)J
    .locals 2

    .prologue
    .line 15
    iget-wide v0, p0, Lcom/piriform/ccleaner/g/d;->f:J

    return-wide v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    invoke-static {p0}, Lcom/piriform/ccleaner/g/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-static {v0}, Lcom/piriform/ccleaner/g/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 71
    const/4 v0, 0x0

    .line 72
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 73
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    .line 74
    invoke-virtual {v0, p0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    :cond_0
    if-nez v0, :cond_1

    .line 77
    const-string/jumbo v0, "*/*"

    .line 79
    :cond_1
    return-object v0
.end method


# virtual methods
.method public final a(Lcom/piriform/ccleaner/g/d;)V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/piriform/ccleaner/g/d;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/piriform/ccleaner/g/d;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/piriform/ccleaner/g/d;->g:Ljava/lang/String;

    .line 149
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/piriform/ccleaner/g/d;->d:Lcom/piriform/ccleaner/g/d;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/piriform/ccleaner/g/d;->d:Lcom/piriform/ccleaner/g/d;

    invoke-virtual {v1}, Lcom/piriform/ccleaner/g/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/piriform/ccleaner/g/d;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/piriform/ccleaner/g/d;->e:Ljava/lang/String;

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 158
    if-ne p0, p1, :cond_1

    .line 180
    :cond_0
    :goto_0
    return v0

    .line 161
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 162
    goto :goto_0

    .line 165
    :cond_3
    check-cast p1, Lcom/piriform/ccleaner/g/d;

    .line 167
    iget-boolean v2, p0, Lcom/piriform/ccleaner/g/d;->c:Z

    iget-boolean v3, p1, Lcom/piriform/ccleaner/g/d;->c:Z

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 168
    goto :goto_0

    .line 170
    :cond_4
    iget-wide v2, p0, Lcom/piriform/ccleaner/g/d;->f:J

    iget-wide v4, p1, Lcom/piriform/ccleaner/g/d;->f:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    move v0, v1

    .line 171
    goto :goto_0

    .line 173
    :cond_5
    iget-object v2, p0, Lcom/piriform/ccleaner/g/d;->e:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/piriform/ccleaner/g/d;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/piriform/ccleaner/g/d;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    :cond_6
    move v0, v1

    .line 174
    goto :goto_0

    .line 173
    :cond_7
    iget-object v2, p1, Lcom/piriform/ccleaner/g/d;->e:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 176
    :cond_8
    iget-object v2, p0, Lcom/piriform/ccleaner/g/d;->d:Lcom/piriform/ccleaner/g/d;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/piriform/ccleaner/g/d;->d:Lcom/piriform/ccleaner/g/d;

    iget-object v3, p1, Lcom/piriform/ccleaner/g/d;->d:Lcom/piriform/ccleaner/g/d;

    invoke-virtual {v2, v3}, Lcom/piriform/ccleaner/g/d;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    .line 177
    goto :goto_0

    .line 176
    :cond_9
    iget-object v2, p1, Lcom/piriform/ccleaner/g/d;->d:Lcom/piriform/ccleaner/g/d;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public final hashCode()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 185
    iget-boolean v0, p0, Lcom/piriform/ccleaner/g/d;->c:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 186
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/piriform/ccleaner/g/d;->d:Lcom/piriform/ccleaner/g/d;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/piriform/ccleaner/g/d;->d:Lcom/piriform/ccleaner/g/d;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/g/d;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 187
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/piriform/ccleaner/g/d;->e:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/piriform/ccleaner/g/d;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 188
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/piriform/ccleaner/g/d;->f:J

    iget-wide v4, p0, Lcom/piriform/ccleaner/g/d;->f:J

    const/16 v1, 0x20

    ushr-long/2addr v4, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 189
    return v0

    :cond_1
    move v0, v1

    .line 185
    goto :goto_0

    :cond_2
    move v0, v1

    .line 186
    goto :goto_1
.end method
