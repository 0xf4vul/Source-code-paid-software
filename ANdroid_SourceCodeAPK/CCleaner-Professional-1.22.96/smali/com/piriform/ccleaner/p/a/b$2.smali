.class final Lcom/piriform/ccleaner/p/a/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/p/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/p/a/b;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/p/a/b;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/piriform/ccleaner/p/a/b$2;->a:Lcom/piriform/ccleaner/p/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/piriform/ccleaner/p/a/b$2;->a:Lcom/piriform/ccleaner/p/a/b;

    .line 1023
    iget-object v0, v0, Lcom/piriform/ccleaner/p/a/b;->a:Landroid/content/Context;

    .line 78
    iget-object v1, p0, Lcom/piriform/ccleaner/p/a/b$2;->a:Lcom/piriform/ccleaner/p/a/b;

    .line 2023
    iget-object v1, v1, Lcom/piriform/ccleaner/p/a/b;->b:Landroid/content/ServiceConnection;

    .line 78
    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 79
    return-void
.end method
