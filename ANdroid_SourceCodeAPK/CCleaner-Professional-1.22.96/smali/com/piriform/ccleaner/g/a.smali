.class public final Lcom/piriform/ccleaner/g/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/piriform/ccleaner/a;


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/a;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/piriform/ccleaner/g/a;->a:Lcom/piriform/ccleaner/a;

    .line 16
    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 28
    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 32
    :try_start_0
    iget-object v1, p0, Lcom/piriform/ccleaner/g/a;->a:Lcom/piriform/ccleaner/a;

    invoke-interface {v1, v0}, Lcom/piriform/ccleaner/a;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :goto_0
    return-void

    .line 34
    :catch_0
    move-exception v1

    const-string/jumbo v1, "*/*"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    iget-object v1, p0, Lcom/piriform/ccleaner/g/a;->a:Lcom/piriform/ccleaner/a;

    invoke-interface {v1, v0}, Lcom/piriform/ccleaner/a;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
