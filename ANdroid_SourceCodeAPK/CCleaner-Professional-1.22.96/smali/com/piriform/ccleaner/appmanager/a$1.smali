.class final Lcom/piriform/ccleaner/appmanager/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/appmanager/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/appmanager/a;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/appmanager/a;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/piriform/ccleaner/appmanager/a$1;->a:Lcom/piriform/ccleaner/appmanager/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 44
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/a$1;->a:Lcom/piriform/ccleaner/appmanager/a;

    .line 1014
    iget-object v0, v0, Lcom/piriform/ccleaner/appmanager/a;->a:Lcom/piriform/ccleaner/appmanager/c;

    .line 1029
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1030
    iget-object v2, v0, Lcom/piriform/ccleaner/appmanager/c;->c:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/piriform/ccleaner/appmanager/c;->b:Ljava/util/List;

    .line 1032
    iget-object v1, v0, Lcom/piriform/ccleaner/appmanager/c;->d:Landroid/app/ActivityManager;

    invoke-static {v1}, Lcom/piriform/ccleaner/core/b/l;->a(Landroid/app/ActivityManager;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/piriform/ccleaner/appmanager/c;->a:Ljava/util/List;

    .line 45
    return-void
.end method
