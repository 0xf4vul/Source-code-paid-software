.class final Lcom/piriform/ccleaner/p/a/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/p/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/p/a/a;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/p/a/a;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/piriform/ccleaner/p/a/a$2;->a:Lcom/piriform/ccleaner/p/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/piriform/ccleaner/p/a/a$2;->a:Lcom/piriform/ccleaner/p/a/a;

    .line 1023
    iget-object v0, v0, Lcom/piriform/ccleaner/p/a/a;->a:Landroid/content/Context;

    .line 76
    iget-object v1, p0, Lcom/piriform/ccleaner/p/a/a$2;->a:Lcom/piriform/ccleaner/p/a/a;

    .line 2023
    iget-object v1, v1, Lcom/piriform/ccleaner/p/a/a;->b:Landroid/content/ServiceConnection;

    .line 76
    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 77
    return-void
.end method
