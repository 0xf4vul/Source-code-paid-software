.class final Lcom/google/android/gms/internal/je$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ib;
.implements Lcom/google/android/gms/internal/je$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/je;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final a:Lcom/google/android/gms/internal/jf;

.field final synthetic b:Lcom/google/android/gms/internal/je;

.field private final c:Lcom/google/android/gms/internal/ks;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/je;Lcom/google/android/gms/internal/ks;)V
    .locals 1

    .prologue
    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/je$c;->b:Lcom/google/android/gms/internal/je;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/je$c;->c:Lcom/google/android/gms/internal/ks;

    .line 1000
    iget-object v0, p2, Lcom/google/android/gms/internal/ks;->a:Lcom/google/android/gms/internal/kr;

    .line 0
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/je;->a(Lcom/google/android/gms/internal/je;Lcom/google/android/gms/internal/kr;)Lcom/google/android/gms/internal/jf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/je$c;->a:Lcom/google/android/gms/internal/jf;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/je$c;->c:Lcom/google/android/gms/internal/ks;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ks;->a()Lcom/google/android/gms/internal/ls;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ls;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/firebase/database/b;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/b;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/gms/internal/km;",
            ">;"
        }
    .end annotation

    .prologue
    .line 0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/je$c;->c:Lcom/google/android/gms/internal/ks;

    .line 10000
    iget-object v0, v0, Lcom/google/android/gms/internal/ks;->a:Lcom/google/android/gms/internal/kr;

    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/je$c;->a:Lcom/google/android/gms/internal/jf;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/je$c;->b:Lcom/google/android/gms/internal/je;

    iget-object v1, p0, Lcom/google/android/gms/internal/je$c;->a:Lcom/google/android/gms/internal/jf;

    .line 11000
    iget-object v2, v0, Lcom/google/android/gms/internal/je;->d:Lcom/google/android/gms/internal/jz;

    new-instance v3, Lcom/google/android/gms/internal/je$5;

    invoke-direct {v3, v0, v1}, Lcom/google/android/gms/internal/je$5;-><init>(Lcom/google/android/gms/internal/je;Lcom/google/android/gms/internal/jf;)V

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/jz;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 0
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/je$c;->b:Lcom/google/android/gms/internal/je;

    .line 12000
    iget-object v0, v0, Lcom/google/android/gms/internal/kr;->a:Lcom/google/android/gms/internal/iu;

    .line 13000
    iget-object v2, v1, Lcom/google/android/gms/internal/je;->d:Lcom/google/android/gms/internal/jz;

    new-instance v3, Lcom/google/android/gms/internal/je$4;

    invoke-direct {v3, v1, v0}, Lcom/google/android/gms/internal/je$4;-><init>(Lcom/google/android/gms/internal/je;Lcom/google/android/gms/internal/iu;)V

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/jz;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0

    .line 0
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/je$c;->b:Lcom/google/android/gms/internal/je;

    invoke-static {v0}, Lcom/google/android/gms/internal/je;->a(Lcom/google/android/gms/internal/je;)Lcom/google/android/gms/internal/lc;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/je$c;->c:Lcom/google/android/gms/internal/ks;

    .line 14000
    iget-object v1, v1, Lcom/google/android/gms/internal/ks;->a:Lcom/google/android/gms/internal/kr;

    .line 15000
    iget-object v1, v1, Lcom/google/android/gms/internal/kr;->a:Lcom/google/android/gms/internal/iu;

    .line 0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/firebase/database/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x13

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Listen at "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " failed: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/lc;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/je$c;->b:Lcom/google/android/gms/internal/je;

    iget-object v1, p0, Lcom/google/android/gms/internal/je$c;->c:Lcom/google/android/gms/internal/ks;

    .line 16000
    iget-object v1, v1, Lcom/google/android/gms/internal/ks;->a:Lcom/google/android/gms/internal/kr;

    .line 17000
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/je;->a(Lcom/google/android/gms/internal/kr;Lcom/google/android/gms/internal/ip;Lcom/google/firebase/database/b;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final b()Z
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/je$c;->c:Lcom/google/android/gms/internal/ks;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ks;->a()Lcom/google/android/gms/internal/ls;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/mp;->a(Lcom/google/android/gms/internal/ls;)J

    move-result-wide v0

    const-wide/16 v2, 0x400

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Lcom/google/android/gms/internal/hv;
    .locals 4

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/je$c;->c:Lcom/google/android/gms/internal/ks;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ks;->a()Lcom/google/android/gms/internal/ls;

    move-result-object v0

    .line 2000
    new-instance v1, Lcom/google/android/gms/internal/lh$b;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/lh$b;-><init>(Lcom/google/android/gms/internal/ls;)V

    .line 3000
    invoke-interface {v0}, Lcom/google/android/gms/internal/ls;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/lh;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/lh;-><init>(Ljava/util/List;Ljava/util/List;)V

    move-object v1, v0

    .line 8000
    :goto_0
    iget-object v0, v1, Lcom/google/android/gms/internal/lh;->a:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 0
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/iu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iu;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3000
    :cond_0
    new-instance v2, Lcom/google/android/gms/internal/lh$a;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/lh$a;-><init>(Lcom/google/android/gms/internal/lh$c;)V

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/lh;->a(Lcom/google/android/gms/internal/ls;Lcom/google/android/gms/internal/lh$a;)V

    .line 5000
    iget v0, v2, Lcom/google/android/gms/internal/lh$a;->d:I

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    const-string/jumbo v1, "Can\'t finish hashing in the middle processing a child"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mv;->a(ZLjava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/lh$a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lcom/google/android/gms/internal/lh$a;->d()V

    :cond_1
    iget-object v0, v2, Lcom/google/android/gms/internal/lh$a;->g:Ljava/util/List;

    const-string/jumbo v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3000
    new-instance v0, Lcom/google/android/gms/internal/lh;

    .line 6000
    iget-object v1, v2, Lcom/google/android/gms/internal/lh$a;->f:Ljava/util/List;

    .line 7000
    iget-object v2, v2, Lcom/google/android/gms/internal/lh$a;->g:Ljava/util/List;

    .line 3000
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/lh;-><init>(Ljava/util/List;Ljava/util/List;)V

    move-object v1, v0

    goto :goto_0

    .line 5000
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 0
    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/hv;

    .line 9000
    iget-object v1, v1, Lcom/google/android/gms/internal/lh;->b:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 0
    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/hv;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method
