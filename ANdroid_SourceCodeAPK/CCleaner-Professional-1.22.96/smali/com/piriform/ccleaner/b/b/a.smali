.class public final Lcom/piriform/ccleaner/b/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/b/b/b;


# instance fields
.field private final b:Lcom/google/firebase/b/a;


# direct methods
.method public constructor <init>(Lcom/google/firebase/b/a;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/piriform/ccleaner/b/b/a;->b:Lcom/google/firebase/b/a;

    .line 1036
    iget-object v1, p0, Lcom/piriform/ccleaner/b/b/a;->b:Lcom/google/firebase/b/a;

    new-instance v0, Lcom/google/firebase/b/e$a;

    invoke-direct {v0}, Lcom/google/firebase/b/e$a;-><init>()V

    .line 2000
    iput-boolean v3, v0, Lcom/google/firebase/b/e$a;->a:Z

    .line 3000
    new-instance v2, Lcom/google/firebase/b/e;

    invoke-direct {v2, v0, v3}, Lcom/google/firebase/b/e;-><init>(Lcom/google/firebase/b/e$a;B)V

    .line 4000
    iget-object v0, v1, Lcom/google/firebase/b/a;->d:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, v1, Lcom/google/firebase/b/a;->c:Lcom/google/android/gms/internal/nh;

    .line 5000
    iget-boolean v0, v0, Lcom/google/android/gms/internal/nh;->d:Z

    .line 6000
    iget-boolean v2, v2, Lcom/google/firebase/b/e;->a:Z

    .line 4000
    iget-object v3, v1, Lcom/google/firebase/b/a;->c:Lcom/google/android/gms/internal/nh;

    .line 7000
    iput-boolean v2, v3, Lcom/google/android/gms/internal/nh;->d:Z

    .line 4000
    if-eq v0, v2, :cond_0

    invoke-virtual {v1}, Lcom/google/firebase/b/a;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, v1, Lcom/google/firebase/b/a;->d:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 7044
    iget-object v0, p0, Lcom/piriform/ccleaner/b/b/a;->b:Lcom/google/firebase/b/a;

    invoke-virtual {v0}, Lcom/google/firebase/b/a;->c()V

    .line 33
    return-void

    .line 4000
    :catchall_0
    move-exception v0

    iget-object v1, v1, Lcom/google/firebase/b/a;->d:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method static synthetic a(Lcom/piriform/ccleaner/b/b/a;)Lcom/google/firebase/b/a;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/piriform/ccleaner/b/b/a;->b:Lcom/google/firebase/b/a;

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 3

    .prologue
    .line 49
    iget-object v0, p0, Lcom/piriform/ccleaner/b/b/a;->b:Lcom/google/firebase/b/a;

    const-string/jumbo v1, "upgrade_to_pro_button_link"

    .line 8000
    const-string/jumbo v2, "configns:firebase"

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/b/a;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 49
    return v0
.end method

.method public final b()Z
    .locals 3

    .prologue
    .line 54
    iget-object v0, p0, Lcom/piriform/ccleaner/b/b/a;->b:Lcom/google/firebase/b/a;

    const-string/jumbo v1, "show_main_analysis_analyze_advert"

    .line 9000
    const-string/jumbo v2, "configns:firebase"

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/b/a;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 54
    return v0
.end method

.method public final c()Z
    .locals 3

    .prologue
    .line 59
    iget-object v0, p0, Lcom/piriform/ccleaner/b/b/a;->b:Lcom/google/firebase/b/a;

    const-string/jumbo v1, "show_main_analysis_clean_advert"

    .line 10000
    const-string/jumbo v2, "configns:firebase"

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/b/a;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 59
    return v0
.end method

.method public final d()Z
    .locals 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/piriform/ccleaner/b/b/a;->b:Lcom/google/firebase/b/a;

    const-string/jumbo v1, "enable_advanced_cleaning"

    .line 11000
    const-string/jumbo v2, "configns:firebase"

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/b/a;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 64
    return v0
.end method

.method public final e()Z
    .locals 3

    .prologue
    .line 69
    iget-object v0, p0, Lcom/piriform/ccleaner/b/b/a;->b:Lcom/google/firebase/b/a;

    const-string/jumbo v1, "enable_advanced_cleaning_reporting"

    .line 12000
    const-string/jumbo v2, "configns:firebase"

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/b/a;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 69
    return v0
.end method

.method public final f()Z
    .locals 3

    .prologue
    .line 74
    iget-object v0, p0, Lcom/piriform/ccleaner/b/b/a;->b:Lcom/google/firebase/b/a;

    const-string/jumbo v1, "show_landing_advert"

    .line 13000
    const-string/jumbo v2, "configns:firebase"

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/b/a;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 74
    return v0
.end method

.method public final g()Lf/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lf/d",
            "<",
            "Lcom/piriform/ccleaner/b/b/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    new-instance v0, Lcom/piriform/ccleaner/b/b/a$1;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/b/b/a$1;-><init>(Lcom/piriform/ccleaner/b/b/a;)V

    sget v1, Lf/a$a;->e:I

    invoke-static {v0, v1}, Lf/d;->a(Lf/c/b;I)Lf/d;

    move-result-object v0

    return-object v0
.end method
