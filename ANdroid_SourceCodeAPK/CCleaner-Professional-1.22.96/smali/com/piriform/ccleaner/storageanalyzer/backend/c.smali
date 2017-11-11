.class public final Lcom/piriform/ccleaner/storageanalyzer/backend/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/storageanalyzer/backend/b;


# static fields
.field private static final a:Lcom/piriform/ccleaner/core/data/AndroidPackage;


# instance fields
.field private final b:Lcom/piriform/ccleaner/f/m;

.field private final c:Lcom/piriform/ccleaner/s/k;

.field private final d:Lcom/piriform/ccleaner/m/k;

.field private final e:Lcom/piriform/ccleaner/p/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/piriform/ccleaner/p/a",
            "<",
            "Lcom/piriform/ccleaner/storageanalyzer/a;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lf/g;

.field private final g:Ljava/lang/String;

.field private final h:Lcom/piriform/ccleaner/b/e;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/piriform/ccleaner/storageanalyzer/backend/c;->a:Lcom/piriform/ccleaner/core/data/AndroidPackage;

    return-void
.end method

.method public constructor <init>(Lcom/piriform/ccleaner/f/m;Lcom/piriform/ccleaner/s/k;Lcom/piriform/ccleaner/m/k;Lf/g;Lcom/piriform/ccleaner/b/e;)V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/piriform/ccleaner/p/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/piriform/ccleaner/p/a;-><init>(B)V

    iput-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/backend/c;->e:Lcom/piriform/ccleaner/p/a;

    .line 54
    iput-object p1, p0, Lcom/piriform/ccleaner/storageanalyzer/backend/c;->b:Lcom/piriform/ccleaner/f/m;

    .line 55
    iput-object p2, p0, Lcom/piriform/ccleaner/storageanalyzer/backend/c;->c:Lcom/piriform/ccleaner/s/k;

    .line 56
    iput-object p3, p0, Lcom/piriform/ccleaner/storageanalyzer/backend/c;->d:Lcom/piriform/ccleaner/m/k;

    .line 57
    iput-object p4, p0, Lcom/piriform/ccleaner/storageanalyzer/backend/c;->f:Lf/g;

    .line 58
    invoke-interface {p1}, Lcom/piriform/ccleaner/f/m;->c()Lcom/piriform/ccleaner/f/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/piriform/ccleaner/f/d;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/backend/c;->g:Ljava/lang/String;

    .line 59
    iput-object p5, p0, Lcom/piriform/ccleaner/storageanalyzer/backend/c;->h:Lcom/piriform/ccleaner/b/e;

    .line 60
    return-void
.end method

.method static synthetic a(Lcom/piriform/ccleaner/storageanalyzer/backend/c;Lcom/piriform/ccleaner/s/l;)Lf/c/b;
    .locals 3

    .prologue
    .line 35
    .line 16249
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/backend/c;->b:Lcom/piriform/ccleaner/f/m;

    new-instance v1, Ljava/io/File;

    .line 17013
    iget-object v2, p1, Lcom/piriform/ccleaner/s/l;->a:Ljava/lang/String;

    .line 16249
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/piriform/ccleaner/f/m;->k(Ljava/io/File;)Lcom/piriform/ccleaner/g/b;

    move-result-object v0

    .line 16250
    new-instance v1, Lcom/piriform/ccleaner/g/e;

    iget-object v2, p0, Lcom/piriform/ccleaner/storageanalyzer/backend/c;->b:Lcom/piriform/ccleaner/f/m;

    invoke-direct {v1, v2}, Lcom/piriform/ccleaner/g/e;-><init>(Lcom/piriform/ccleaner/f/m;)V

    .line 16252
    new-instance v2, Lcom/piriform/ccleaner/storageanalyzer/backend/c$3;

    invoke-direct {v2, p0, v0, v1}, Lcom/piriform/ccleaner/storageanalyzer/backend/c$3;-><init>(Lcom/piriform/ccleaner/storageanalyzer/backend/c;Lcom/piriform/ccleaner/g/b;Lcom/piriform/ccleaner/g/e;)V

    .line 35
    return-object v2
.end method

.method static synthetic a(Lcom/piriform/ccleaner/storageanalyzer/backend/c;)Lf/g;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/backend/c;->f:Lf/g;

    return-object v0
.end method

.method static synthetic a(Lcom/piriform/ccleaner/storageanalyzer/backend/c;Ljava/util/List;)Ljava/util/List;
    .locals 6

    .prologue
    .line 12118
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12119
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/g/d;

    .line 12120
    new-instance v3, Ljava/io/File;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/g/d;->b()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12121
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 12122
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    .line 12123
    if-eqz v3, :cond_0

    .line 12124
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12133
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 12134
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int v2, v0, v2

    .line 12136
    if-lez v2, :cond_2

    .line 12137
    iget-object v3, p0, Lcom/piriform/ccleaner/storageanalyzer/backend/c;->h:Lcom/piriform/ccleaner/b/e;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Failed to delete "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " files"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/piriform/ccleaner/b/e;->a(Ljava/lang/String;)V

    .line 35
    :cond_2
    return-object v1
.end method

.method static synthetic a(Lcom/piriform/ccleaner/storageanalyzer/backend/c;Lcom/piriform/ccleaner/g/d;)Z
    .locals 3

    .prologue
    .line 35
    .line 16205
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/backend/c;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 16206
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p1}, Lcom/piriform/ccleaner/g/d;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16207
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 16210
    :cond_1
    const/4 v0, 0x0

    .line 35
    goto :goto_0
.end method

.method static synthetic b(Lcom/piriform/ccleaner/storageanalyzer/backend/c;)Lcom/piriform/ccleaner/m/k;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/backend/c;->d:Lcom/piriform/ccleaner/m/k;

    return-object v0
.end method

.method static synthetic b(Lcom/piriform/ccleaner/storageanalyzer/backend/c;Ljava/util/List;)Lf/d;
    .locals 4

    .prologue
    .line 12186
    new-instance v0, Lcom/piriform/ccleaner/storageanalyzer/a;

    invoke-direct {v0}, Lcom/piriform/ccleaner/storageanalyzer/a;-><init>()V

    .line 12187
    invoke-static {p1}, Lf/d;->a(Ljava/lang/Iterable;)Lf/d;

    move-result-object v1

    .line 12235
    new-instance v2, Lcom/piriform/ccleaner/storageanalyzer/backend/c$2;

    invoke-direct {v2, p0}, Lcom/piriform/ccleaner/storageanalyzer/backend/c$2;-><init>(Lcom/piriform/ccleaner/storageanalyzer/backend/c;)V

    .line 12188
    invoke-virtual {v1, v2}, Lf/d;->b(Lf/c/e;)Lf/d;

    move-result-object v1

    .line 13215
    new-instance v2, Lcom/piriform/ccleaner/storageanalyzer/backend/c$11;

    invoke-direct {v2, p0}, Lcom/piriform/ccleaner/storageanalyzer/backend/c$11;-><init>(Lcom/piriform/ccleaner/storageanalyzer/backend/c;)V

    .line 12189
    invoke-virtual {v1, v2}, Lf/d;->a(Lf/c/e;)Lf/d;

    move-result-object v1

    .line 14195
    new-instance v2, Lcom/piriform/ccleaner/storageanalyzer/backend/c$10;

    invoke-direct {v2, p0}, Lcom/piriform/ccleaner/storageanalyzer/backend/c$10;-><init>(Lcom/piriform/ccleaner/storageanalyzer/backend/c;)V

    .line 12190
    invoke-virtual {v1, v2}, Lf/d;->a(Lf/c/e;)Lf/d;

    move-result-object v1

    .line 14271
    new-instance v2, Lcom/piriform/ccleaner/storageanalyzer/backend/c$4;

    invoke-direct {v2, p0}, Lcom/piriform/ccleaner/storageanalyzer/backend/c$4;-><init>(Lcom/piriform/ccleaner/storageanalyzer/backend/c;)V

    .line 15259
    new-instance v3, Lf/d/a/ab;

    invoke-direct {v3, v0, v2}, Lf/d/a/ab;-><init>(Ljava/lang/Object;Lf/c/f;)V

    invoke-virtual {v1, v3}, Lf/d;->a(Lf/d$b;)Lf/d;

    move-result-object v0

    .line 35
    return-object v0
.end method

.method static synthetic c()Lcom/piriform/ccleaner/core/data/AndroidPackage;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/piriform/ccleaner/storageanalyzer/backend/c;->a:Lcom/piriform/ccleaner/core/data/AndroidPackage;

    return-object v0
.end method

.method static synthetic c(Lcom/piriform/ccleaner/storageanalyzer/backend/c;)Lf/c/f;
    .locals 1

    .prologue
    .line 16173
    new-instance v0, Lcom/piriform/ccleaner/storageanalyzer/backend/c$9;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/storageanalyzer/backend/c$9;-><init>(Lcom/piriform/ccleaner/storageanalyzer/backend/c;)V

    .line 35
    return-object v0
.end method

.method static synthetic d(Lcom/piriform/ccleaner/storageanalyzer/backend/c;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/backend/c;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/piriform/ccleaner/storageanalyzer/backend/c;)Lcom/piriform/ccleaner/s/k;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/backend/c;->c:Lcom/piriform/ccleaner/s/k;

    return-object v0
.end method

.method static synthetic f(Lcom/piriform/ccleaner/storageanalyzer/backend/c;)Lcom/piriform/ccleaner/b/e;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/backend/c;->h:Lcom/piriform/ccleaner/b/e;

    return-object v0
.end method


# virtual methods
.method public final a()Lf/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lf/d",
            "<",
            "Lcom/piriform/ccleaner/storageanalyzer/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/backend/c;->d:Lcom/piriform/ccleaner/m/k;

    invoke-interface {v0}, Lcom/piriform/ccleaner/m/k;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/backend/c;->i:Ljava/util/List;

    .line 10225
    new-instance v0, Lcom/piriform/ccleaner/storageanalyzer/backend/c$12;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/storageanalyzer/backend/c$12;-><init>(Lcom/piriform/ccleaner/storageanalyzer/backend/c;)V

    invoke-static {v0}, Lf/d;->a(Ljava/util/concurrent/Callable;)Lf/d;

    move-result-object v0

    .line 10153
    iget-object v1, p0, Lcom/piriform/ccleaner/storageanalyzer/backend/c;->f:Lf/g;

    .line 10154
    invoke-virtual {v0, v1}, Lf/d;->a(Lf/g;)Lf/d;

    move-result-object v0

    new-instance v1, Lcom/piriform/ccleaner/storageanalyzer/backend/c$8;

    invoke-direct {v1, p0}, Lcom/piriform/ccleaner/storageanalyzer/backend/c$8;-><init>(Lcom/piriform/ccleaner/storageanalyzer/backend/c;)V

    .line 10155
    invoke-virtual {v0, v1}, Lf/d;->b(Lf/c/e;)Lf/d;

    move-result-object v0

    .line 11143
    new-instance v1, Lcom/piriform/ccleaner/storageanalyzer/backend/c$7;

    invoke-direct {v1, p0}, Lcom/piriform/ccleaner/storageanalyzer/backend/c$7;-><init>(Lcom/piriform/ccleaner/storageanalyzer/backend/c;)V

    .line 12013
    new-instance v2, Lcom/piriform/ccleaner/p/d;

    invoke-direct {v2, v1}, Lcom/piriform/ccleaner/p/d;-><init>(Lf/c/e;)V

    .line 66
    invoke-virtual {v0, v2}, Lf/d;->a(Lf/d$c;)Lf/d;

    move-result-object v0

    iget-object v1, p0, Lcom/piriform/ccleaner/storageanalyzer/backend/c;->e:Lcom/piriform/ccleaner/p/a;

    .line 67
    invoke-virtual {v0, v1}, Lf/d;->a(Lf/d$c;)Lf/d;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/util/List;)Lf/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/g/d;",
            ">;)",
            "Lf/d",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/g/d;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/piriform/ccleaner/storageanalyzer/backend/c;->b()Lf/d;

    move-result-object v0

    .line 12086
    new-instance v1, Lcom/piriform/ccleaner/storageanalyzer/backend/c$1;

    invoke-direct {v1, p0, p1}, Lcom/piriform/ccleaner/storageanalyzer/backend/c$1;-><init>(Lcom/piriform/ccleaner/storageanalyzer/backend/c;Ljava/util/List;)V

    .line 79
    invoke-virtual {v0, v1}, Lf/d;->c(Lf/c/e;)Lf/d;

    move-result-object v0

    .line 12096
    new-instance v1, Lcom/piriform/ccleaner/storageanalyzer/backend/c$5;

    invoke-direct {v1, p0}, Lcom/piriform/ccleaner/storageanalyzer/backend/c$5;-><init>(Lcom/piriform/ccleaner/storageanalyzer/backend/c;)V

    .line 80
    invoke-virtual {v0, v1}, Lf/d;->a(Lf/c/b;)Lf/d;

    move-result-object v0

    .line 12108
    new-instance v1, Lcom/piriform/ccleaner/storageanalyzer/backend/c$6;

    invoke-direct {v1, p0}, Lcom/piriform/ccleaner/storageanalyzer/backend/c$6;-><init>(Lcom/piriform/ccleaner/storageanalyzer/backend/c;)V

    .line 81
    invoke-virtual {v0, v1}, Lf/d;->c(Lf/c/e;)Lf/d;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lf/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lf/d",
            "<",
            "Lcom/piriform/ccleaner/storageanalyzer/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/backend/c;->e:Lcom/piriform/ccleaner/p/a;

    .line 12054
    iget-object v0, v0, Lcom/piriform/ccleaner/p/a;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/d;

    .line 73
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/piriform/ccleaner/storageanalyzer/a;->a:Lcom/piriform/ccleaner/storageanalyzer/a;

    invoke-static {v0}, Lf/d;->a(Ljava/lang/Object;)Lf/d;

    move-result-object v0

    goto :goto_0
.end method
