.class public final Lcom/novoda/notils/c/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/novoda/notils/c/b/c;


# instance fields
.field final a:Landroid/content/Context;

.field private final b:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Landroid/widget/Toast;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/novoda/notils/c/b/b;->a:Landroid/content/Context;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/novoda/notils/c/b/b;->b:Ljava/util/Collection;

    .line 20
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .prologue
    .line 29
    .line 1048
    iget-object v0, p0, Lcom/novoda/notils/c/b/b;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 1049
    invoke-virtual {p0, v0}, Lcom/novoda/notils/c/b/b;->a(Landroid/widget/Toast;)V

    .line 30
    return-void
.end method

.method final a(Landroid/widget/Toast;)V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/novoda/notils/c/b/b;->b:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 54
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 55
    return-void
.end method
