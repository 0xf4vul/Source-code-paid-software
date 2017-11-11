.class final Lcom/b/a/c/h$d$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/b/a/c/h$d;->a()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/b/a/c/f;

.field final synthetic b:Lcom/b/a/c/h$d;


# direct methods
.method constructor <init>(Lcom/b/a/c/h$d;Lcom/b/a/c/f;)V
    .locals 0

    .prologue
    .line 1407
    iput-object p1, p0, Lcom/b/a/c/h$d$2;->b:Lcom/b/a/c/h$d;

    iput-object p2, p0, Lcom/b/a/c/h$d$2;->a:Lcom/b/a/c/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 1410
    iget-object v0, p0, Lcom/b/a/c/h$d$2;->a:Lcom/b/a/c/f;

    .line 2140
    iget-object v0, v0, Lcom/b/a/c/f;->b:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1411
    return-void
.end method
