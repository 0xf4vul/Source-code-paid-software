.class final Lcom/b/a/c/q$2;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/b/a/c/q;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/b/a/c/q;


# direct methods
.method constructor <init>(Lcom/b/a/c/q;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/b/a/c/q$2;->a:Lcom/b/a/c/q;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/b/a/c/q$2;->a:Lcom/b/a/c/q;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/b/a/c/q;->a(Lcom/b/a/c/q;Z)Z

    .line 51
    return-void
.end method
