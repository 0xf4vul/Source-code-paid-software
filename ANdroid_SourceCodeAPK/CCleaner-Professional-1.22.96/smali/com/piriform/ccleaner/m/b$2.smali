.class final Lcom/piriform/ccleaner/m/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/c/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/m/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/c/e",
        "<",
        "Lcom/piriform/ccleaner/core/data/AndroidPackage;",
        "Lcom/piriform/ccleaner/core/data/AndroidPackage;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/m/c;

.field final synthetic b:Lcom/piriform/ccleaner/m/b;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/m/b;Lcom/piriform/ccleaner/m/c;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/piriform/ccleaner/m/b$2;->b:Lcom/piriform/ccleaner/m/b;

    iput-object p2, p0, Lcom/piriform/ccleaner/m/b$2;->a:Lcom/piriform/ccleaner/m/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 70
    check-cast p1, Lcom/piriform/ccleaner/core/data/AndroidPackage;

    .line 1073
    iget-object v0, p0, Lcom/piriform/ccleaner/m/b$2;->b:Lcom/piriform/ccleaner/m/b;

    .line 2022
    iget-object v0, v0, Lcom/piriform/ccleaner/m/b;->a:Lcom/piriform/ccleaner/m/m;

    .line 1073
    iget-object v1, p0, Lcom/piriform/ccleaner/m/b$2;->a:Lcom/piriform/ccleaner/m/c;

    invoke-virtual {v0, p1, v1}, Lcom/piriform/ccleaner/m/m;->a(Lcom/piriform/ccleaner/core/data/AndroidPackage;Lcom/piriform/ccleaner/m/l;)V

    .line 1074
    iget-object v0, p0, Lcom/piriform/ccleaner/m/b$2;->a:Lcom/piriform/ccleaner/m/c;

    const-wide/16 v2, 0x5

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lcom/piriform/ccleaner/m/c;->a(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    .line 1075
    if-nez v0, :cond_0

    .line 1076
    const-string/jumbo v0, "Timed out waiting"

    .line 1077
    iget-object v1, p0, Lcom/piriform/ccleaner/m/b$2;->b:Lcom/piriform/ccleaner/m/b;

    .line 3022
    iget-object v1, v1, Lcom/piriform/ccleaner/m/b;->b:Lcom/piriform/ccleaner/b/e;

    .line 1077
    invoke-interface {v1, v0}, Lcom/piriform/ccleaner/b/e;->a(Ljava/lang/String;)V

    .line 1078
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/novoda/notils/c/a/a;->d([Ljava/lang/Object;)V

    .line 70
    :cond_0
    return-object p1
.end method
