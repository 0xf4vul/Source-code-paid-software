.class final Lcom/piriform/ccleaner/m/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/piriform/ccleaner/m/b;->b()Lf/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/m/c;

.field final synthetic b:Lcom/piriform/ccleaner/m/b;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/m/b;Lcom/piriform/ccleaner/m/c;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/piriform/ccleaner/m/b$1;->b:Lcom/piriform/ccleaner/m/b;

    iput-object p2, p0, Lcom/piriform/ccleaner/m/b$1;->a:Lcom/piriform/ccleaner/m/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 58
    iget-object v0, p0, Lcom/piriform/ccleaner/m/b$1;->a:Lcom/piriform/ccleaner/m/c;

    iget-object v1, p0, Lcom/piriform/ccleaner/m/b$1;->b:Lcom/piriform/ccleaner/m/b;

    .line 1022
    iget-object v1, v1, Lcom/piriform/ccleaner/m/b;->b:Lcom/piriform/ccleaner/b/e;

    .line 1027
    iget-object v0, v0, Lcom/piriform/ccleaner/m/c;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    move-result v0

    .line 1028
    if-eqz v0, :cond_0

    .line 1029
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Finished getInstalledApps with difference in permits: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1030
    invoke-interface {v1, v0}, Lcom/piriform/ccleaner/b/e;->a(Ljava/lang/String;)V

    .line 1031
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/novoda/notils/c/a/a;->d([Ljava/lang/Object;)V

    .line 59
    :cond_0
    return-void
.end method
