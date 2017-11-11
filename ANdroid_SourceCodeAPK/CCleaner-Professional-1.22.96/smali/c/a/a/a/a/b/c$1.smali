.class final Lc/a/a/a/a/b/c$1;
.super Lc/a/a/a/a/b/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/a/a/a/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc/a/a/a/a/b/b;

.field final synthetic b:Lc/a/a/a/a/b/c;


# direct methods
.method constructor <init>(Lc/a/a/a/a/b/c;Lc/a/a/a/a/b/b;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lc/a/a/a/a/b/c$1;->b:Lc/a/a/a/a/b/c;

    iput-object p2, p0, Lc/a/a/a/a/b/c$1;->a:Lc/a/a/a/a/b/b;

    invoke-direct {p0}, Lc/a/a/a/a/b/h;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 70
    iget-object v0, p0, Lc/a/a/a/a/b/c$1;->b:Lc/a/a/a/a/b/c;

    .line 1028
    invoke-virtual {v0}, Lc/a/a/a/a/b/c;->a()Lc/a/a/a/a/b/b;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lc/a/a/a/a/b/c$1;->a:Lc/a/a/a/a/b/b;

    invoke-virtual {v1, v0}, Lc/a/a/a/a/b/b;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 72
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v1

    const-string/jumbo v2, "Fabric"

    const-string/jumbo v3, "Asychronously getting Advertising Info and storing it to preferences"

    invoke-interface {v1, v2, v3}, Lc/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v1, p0, Lc/a/a/a/a/b/c$1;->b:Lc/a/a/a/a/b/c;

    .line 2028
    invoke-virtual {v1, v0}, Lc/a/a/a/a/b/c;->a(Lc/a/a/a/a/b/b;)V

    .line 76
    :cond_0
    return-void
.end method
