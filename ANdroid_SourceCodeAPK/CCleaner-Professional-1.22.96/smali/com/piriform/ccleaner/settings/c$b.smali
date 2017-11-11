.class public final enum Lcom/piriform/ccleaner/settings/c$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/settings/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/piriform/ccleaner/settings/c$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/piriform/ccleaner/settings/c$b;

.field public static final enum b:Lcom/piriform/ccleaner/settings/c$b;

.field private static final synthetic e:[Lcom/piriform/ccleaner/settings/c$b;


# instance fields
.field public final c:I

.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 44
    new-instance v0, Lcom/piriform/ccleaner/settings/c$b;

    const-string/jumbo v1, "FILE"

    const v2, 0x7f0200eb

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/piriform/ccleaner/settings/c$b;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/piriform/ccleaner/settings/c$b;->a:Lcom/piriform/ccleaner/settings/c$b;

    .line 45
    new-instance v0, Lcom/piriform/ccleaner/settings/c$b;

    const-string/jumbo v1, "FOLDER"

    const v2, 0x7f0200ec

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/piriform/ccleaner/settings/c$b;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/piriform/ccleaner/settings/c$b;->b:Lcom/piriform/ccleaner/settings/c$b;

    .line 43
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/piriform/ccleaner/settings/c$b;

    sget-object v1, Lcom/piriform/ccleaner/settings/c$b;->a:Lcom/piriform/ccleaner/settings/c$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/piriform/ccleaner/settings/c$b;->b:Lcom/piriform/ccleaner/settings/c$b;

    aput-object v1, v0, v4

    sput-object v0, Lcom/piriform/ccleaner/settings/c$b;->e:[Lcom/piriform/ccleaner/settings/c$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 52
    iput p3, p0, Lcom/piriform/ccleaner/settings/c$b;->d:I

    .line 53
    iput p4, p0, Lcom/piriform/ccleaner/settings/c$b;->c:I

    .line 54
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/piriform/ccleaner/settings/c$b;
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/piriform/ccleaner/settings/c$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/settings/c$b;

    return-object v0
.end method

.method public static values()[Lcom/piriform/ccleaner/settings/c$b;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/piriform/ccleaner/settings/c$b;->e:[Lcom/piriform/ccleaner/settings/c$b;

    invoke-virtual {v0}, [Lcom/piriform/ccleaner/settings/c$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/piriform/ccleaner/settings/c$b;

    return-object v0
.end method
