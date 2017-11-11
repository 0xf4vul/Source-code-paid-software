.class public final Lcom/novoda/notils/c/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/novoda/notils/c/b/c;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Landroid/widget/Toast;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/novoda/notils/c/b/a;->a:Landroid/content/Context;

    .line 17
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .prologue
    .line 38
    .line 1077
    iget-object v0, p0, Lcom/novoda/notils/c/b/a;->b:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 1080
    iget-object v0, p0, Lcom/novoda/notils/c/b/a;->b:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 1071
    :cond_0
    iget-object v0, p0, Lcom/novoda/notils/c/b/a;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/novoda/notils/c/b/a;->b:Landroid/widget/Toast;

    .line 1072
    iget-object v0, p0, Lcom/novoda/notils/c/b/a;->b:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 39
    return-void
.end method
