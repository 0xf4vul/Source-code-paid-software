.class abstract enum Lcom/piriform/ccleaner/appmanager/f;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/piriform/ccleaner/appmanager/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/piriform/ccleaner/appmanager/f;

.field public static final enum b:Lcom/piriform/ccleaner/appmanager/f;

.field public static final enum c:Lcom/piriform/ccleaner/appmanager/f;

.field public static final d:I

.field private static final synthetic f:[Lcom/piriform/ccleaner/appmanager/f;


# instance fields
.field final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 9
    new-instance v0, Lcom/piriform/ccleaner/appmanager/f$1;

    const-string/jumbo v1, "INSTALLED"

    invoke-direct {v0, v1}, Lcom/piriform/ccleaner/appmanager/f$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/piriform/ccleaner/appmanager/f;->a:Lcom/piriform/ccleaner/appmanager/f;

    .line 20
    new-instance v0, Lcom/piriform/ccleaner/appmanager/f$2;

    const-string/jumbo v1, "SYSTEM"

    invoke-direct {v0, v1}, Lcom/piriform/ccleaner/appmanager/f$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/piriform/ccleaner/appmanager/f;->b:Lcom/piriform/ccleaner/appmanager/f;

    .line 31
    new-instance v0, Lcom/piriform/ccleaner/appmanager/f$3;

    const-string/jumbo v1, "DISABLED"

    invoke-direct {v0, v1}, Lcom/piriform/ccleaner/appmanager/f$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/piriform/ccleaner/appmanager/f;->c:Lcom/piriform/ccleaner/appmanager/f;

    .line 8
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/piriform/ccleaner/appmanager/f;

    const/4 v1, 0x0

    sget-object v2, Lcom/piriform/ccleaner/appmanager/f;->a:Lcom/piriform/ccleaner/appmanager/f;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/piriform/ccleaner/appmanager/f;->b:Lcom/piriform/ccleaner/appmanager/f;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/piriform/ccleaner/appmanager/f;->c:Lcom/piriform/ccleaner/appmanager/f;

    aput-object v2, v0, v1

    sput-object v0, Lcom/piriform/ccleaner/appmanager/f;->f:[Lcom/piriform/ccleaner/appmanager/f;

    .line 43
    invoke-static {}, Lcom/piriform/ccleaner/appmanager/f;->values()[Lcom/piriform/ccleaner/appmanager/f;

    move-result-object v0

    array-length v0, v0

    sput v0, Lcom/piriform/ccleaner/appmanager/f;->d:I

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
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 48
    iput p3, p0, Lcom/piriform/ccleaner/appmanager/f;->e:I

    .line 49
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIB)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0, p1, p2, p3}, Lcom/piriform/ccleaner/appmanager/f;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public static a(I)Lcom/piriform/ccleaner/appmanager/f;
    .locals 1

    .prologue
    .line 52
    invoke-static {}, Lcom/piriform/ccleaner/appmanager/f;->values()[Lcom/piriform/ccleaner/appmanager/f;

    move-result-object v0

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/piriform/ccleaner/appmanager/f;
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/piriform/ccleaner/appmanager/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/appmanager/f;

    return-object v0
.end method

.method public static values()[Lcom/piriform/ccleaner/appmanager/f;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/piriform/ccleaner/appmanager/f;->f:[Lcom/piriform/ccleaner/appmanager/f;

    invoke-virtual {v0}, [Lcom/piriform/ccleaner/appmanager/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/piriform/ccleaner/appmanager/f;

    return-object v0
.end method


# virtual methods
.method public abstract a(Lcom/piriform/ccleaner/appmanager/AppManagerActivity;)V
.end method

.method public abstract a(Lcom/piriform/ccleaner/core/data/AndroidPackage;)Z
.end method
