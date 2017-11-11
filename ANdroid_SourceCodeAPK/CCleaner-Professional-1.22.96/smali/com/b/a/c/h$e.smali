.class final Lcom/b/a/c/h$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/c/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "e"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/b/a/c/ae;

.field private final c:Lcom/b/a/c/af;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/b/a/c/ae;Lcom/b/a/c/af;)V
    .locals 0

    .prologue
    .line 1426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1427
    iput-object p1, p0, Lcom/b/a/c/h$e;->a:Landroid/content/Context;

    .line 1428
    iput-object p2, p0, Lcom/b/a/c/h$e;->b:Lcom/b/a/c/ae;

    .line 1429
    iput-object p3, p0, Lcom/b/a/c/h$e;->c:Lcom/b/a/c/af;

    .line 1430
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 1434
    iget-object v0, p0, Lcom/b/a/c/h$e;->a:Landroid/content/Context;

    invoke-static {v0}, Lc/a/a/a/a/b/i;->l(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1442
    :goto_0
    return-void

    .line 1438
    :cond_0
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v0

    const-string/jumbo v1, "CrashlyticsCore"

    const-string/jumbo v2, "Attempting to send crash report at time of crash..."

    invoke-interface {v0, v1, v2}, Lc/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1441
    iget-object v0, p0, Lcom/b/a/c/h$e;->c:Lcom/b/a/c/af;

    iget-object v1, p0, Lcom/b/a/c/h$e;->b:Lcom/b/a/c/ae;

    invoke-virtual {v0, v1}, Lcom/b/a/c/af;->a(Lcom/b/a/c/ae;)Z

    goto :goto_0
.end method
