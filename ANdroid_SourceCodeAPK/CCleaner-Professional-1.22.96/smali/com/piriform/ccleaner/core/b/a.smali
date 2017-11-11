.class public final Lcom/piriform/ccleaner/core/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/piriform/ccleaner/core/b/a$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/piriform/ccleaner/s/h;

.field public final c:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Lcom/piriform/ccleaner/s/h;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p2, p0, Lcom/piriform/ccleaner/core/b/a;->c:Landroid/content/pm/PackageManager;

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/piriform/ccleaner/core/b/a;->a:Landroid/content/Context;

    .line 36
    iput-object p3, p0, Lcom/piriform/ccleaner/core/b/a;->b:Lcom/piriform/ccleaner/s/h;

    .line 37
    return-void
.end method
