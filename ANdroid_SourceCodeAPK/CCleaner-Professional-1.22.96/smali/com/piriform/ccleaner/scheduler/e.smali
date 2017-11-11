.class public final Lcom/piriform/ccleaner/scheduler/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/scheduler/m;


# instance fields
.field private final a:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/piriform/ccleaner/scheduler/e;->a:Landroid/app/Activity;

    .line 16
    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 3

    .prologue
    .line 26
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-static {p1, p2}, Lcom/piriform/ccleaner/data/CCleanerContentProvider$c;->a(J)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 27
    iget-object v1, p0, Lcom/piriform/ccleaner/scheduler/e;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 28
    return-void
.end method

.method public final a(Lcom/piriform/ccleaner/l/c;)V
    .locals 3

    .prologue
    .line 20
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-static {p1}, Lcom/piriform/ccleaner/data/CCleanerContentProvider$c;->a(Lcom/piriform/ccleaner/l/c;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 21
    iget-object v1, p0, Lcom/piriform/ccleaner/scheduler/e;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 22
    return-void
.end method
