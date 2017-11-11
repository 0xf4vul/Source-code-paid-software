.class final Lcom/b/a/b/b$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/b/a/b/b$1;->b(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/b/a/b/b$1;


# direct methods
.method constructor <init>(Lcom/b/a/b/b$1;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/b/a/b/b$1$1;->a:Lcom/b/a/b/b$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/b/a/b/b$1$1;->a:Lcom/b/a/b/b$1;

    iget-object v0, v0, Lcom/b/a/b/b$1;->a:Lcom/b/a/b/b;

    invoke-virtual {v0}, Lcom/b/a/b/b;->a()V

    .line 28
    return-void
.end method
