.class public final Lcom/piriform/ccleaner/appmanager/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field final c:Landroid/content/pm/PackageManager;

.field final d:Landroid/app/ActivityManager;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;Landroid/app/ActivityManager;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/piriform/ccleaner/appmanager/c;->c:Landroid/content/pm/PackageManager;

    .line 25
    iput-object p2, p0, Lcom/piriform/ccleaner/appmanager/c;->d:Landroid/app/ActivityManager;

    .line 26
    return-void
.end method
