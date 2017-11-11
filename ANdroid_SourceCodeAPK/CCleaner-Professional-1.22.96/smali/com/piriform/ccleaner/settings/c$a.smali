.class public final enum Lcom/piriform/ccleaner/settings/c$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/settings/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/piriform/ccleaner/settings/c$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/piriform/ccleaner/settings/c$a;

.field public static final enum b:Lcom/piriform/ccleaner/settings/c$a;

.field public static final enum c:Lcom/piriform/ccleaner/settings/c$a;

.field private static final synthetic e:[Lcom/piriform/ccleaner/settings/c$a;


# instance fields
.field public final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 28
    new-instance v0, Lcom/piriform/ccleaner/settings/c$a;

    const-string/jumbo v1, "FILES_ONLY"

    const v2, 0x7f0800bc

    invoke-direct {v0, v1, v3, v2}, Lcom/piriform/ccleaner/settings/c$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/piriform/ccleaner/settings/c$a;->a:Lcom/piriform/ccleaner/settings/c$a;

    .line 29
    new-instance v0, Lcom/piriform/ccleaner/settings/c$a;

    const-string/jumbo v1, "FILES_AND_SUBFOLDERS"

    const v2, 0x7f0800bb

    invoke-direct {v0, v1, v4, v2}, Lcom/piriform/ccleaner/settings/c$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/piriform/ccleaner/settings/c$a;->b:Lcom/piriform/ccleaner/settings/c$a;

    .line 30
    new-instance v0, Lcom/piriform/ccleaner/settings/c$a;

    const-string/jumbo v1, "FILES_SUBFOLDERS_AND_FOLDER_ITSELF"

    const v2, 0x7f0800bd

    invoke-direct {v0, v1, v5, v2}, Lcom/piriform/ccleaner/settings/c$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/piriform/ccleaner/settings/c$a;->c:Lcom/piriform/ccleaner/settings/c$a;

    .line 27
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/piriform/ccleaner/settings/c$a;

    sget-object v1, Lcom/piriform/ccleaner/settings/c$a;->a:Lcom/piriform/ccleaner/settings/c$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/piriform/ccleaner/settings/c$a;->b:Lcom/piriform/ccleaner/settings/c$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/piriform/ccleaner/settings/c$a;->c:Lcom/piriform/ccleaner/settings/c$a;

    aput-object v1, v0, v5

    sput-object v0, Lcom/piriform/ccleaner/settings/c$a;->e:[Lcom/piriform/ccleaner/settings/c$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    iput p3, p0, Lcom/piriform/ccleaner/settings/c$a;->d:I

    .line 36
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/piriform/ccleaner/settings/c$a;
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/piriform/ccleaner/settings/c$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/settings/c$a;

    return-object v0
.end method

.method public static values()[Lcom/piriform/ccleaner/settings/c$a;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/piriform/ccleaner/settings/c$a;->e:[Lcom/piriform/ccleaner/settings/c$a;

    invoke-virtual {v0}, [Lcom/piriform/ccleaner/settings/c$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/piriform/ccleaner/settings/c$a;

    return-object v0
.end method
