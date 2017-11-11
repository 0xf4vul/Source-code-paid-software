.class public Lcom/piriform/ccleaner/data/CCleanerContentProvider;
.super Le/a/a/b/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/piriform/ccleaner/data/CCleanerContentProvider$c;,
        Lcom/piriform/ccleaner/data/CCleanerContentProvider$a;,
        Lcom/piriform/ccleaner/data/CCleanerContentProvider$b;
    }
.end annotation


# static fields
.field private static b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput v0, Lcom/piriform/ccleaner/data/CCleanerContentProvider;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Le/a/a/b/c;-><init>()V

    return-void
.end method

.method public static a()I
    .locals 1

    .prologue
    .line 102
    sget v0, Lcom/piriform/ccleaner/data/CCleanerContentProvider;->b:I

    return v0
.end method


# virtual methods
.method public onCreate()Z
    .locals 1

    .prologue
    .line 96
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/piriform/ccleaner/data/CCleanerContentProvider;->b:I

    .line 97
    invoke-super {p0}, Le/a/a/b/c;->onCreate()Z

    move-result v0

    return v0
.end method
