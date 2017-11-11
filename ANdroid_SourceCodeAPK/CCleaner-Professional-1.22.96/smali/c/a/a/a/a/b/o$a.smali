.class public final enum Lc/a/a/a/a/b/o$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/a/a/a/b/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lc/a/a/a/a/b/o$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lc/a/a/a/a/b/o$a;

.field public static final enum b:Lc/a/a/a/a/b/o$a;

.field public static final enum c:Lc/a/a/a/a/b/o$a;

.field public static final enum d:Lc/a/a/a/a/b/o$a;

.field public static final enum e:Lc/a/a/a/a/b/o$a;

.field public static final enum f:Lc/a/a/a/a/b/o$a;

.field public static final enum g:Lc/a/a/a/a/b/o$a;

.field private static final synthetic i:[Lc/a/a/a/a/b/o$a;


# instance fields
.field public final h:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 56
    new-instance v0, Lc/a/a/a/a/b/o$a;

    const-string/jumbo v1, "WIFI_MAC_ADDRESS"

    invoke-direct {v0, v1, v6, v4}, Lc/a/a/a/a/b/o$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lc/a/a/a/a/b/o$a;->a:Lc/a/a/a/a/b/o$a;

    .line 57
    new-instance v0, Lc/a/a/a/a/b/o$a;

    const-string/jumbo v1, "BLUETOOTH_MAC_ADDRESS"

    invoke-direct {v0, v1, v4, v5}, Lc/a/a/a/a/b/o$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lc/a/a/a/a/b/o$a;->b:Lc/a/a/a/a/b/o$a;

    .line 60
    new-instance v0, Lc/a/a/a/a/b/o$a;

    const-string/jumbo v1, "FONT_TOKEN"

    const/16 v2, 0x35

    invoke-direct {v0, v1, v5, v2}, Lc/a/a/a/a/b/o$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lc/a/a/a/a/b/o$a;->c:Lc/a/a/a/a/b/o$a;

    .line 61
    new-instance v0, Lc/a/a/a/a/b/o$a;

    const-string/jumbo v1, "ANDROID_ID"

    const/16 v2, 0x64

    invoke-direct {v0, v1, v7, v2}, Lc/a/a/a/a/b/o$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lc/a/a/a/a/b/o$a;->d:Lc/a/a/a/a/b/o$a;

    .line 62
    new-instance v0, Lc/a/a/a/a/b/o$a;

    const-string/jumbo v1, "ANDROID_DEVICE_ID"

    const/16 v2, 0x65

    invoke-direct {v0, v1, v8, v2}, Lc/a/a/a/a/b/o$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lc/a/a/a/a/b/o$a;->e:Lc/a/a/a/a/b/o$a;

    .line 63
    new-instance v0, Lc/a/a/a/a/b/o$a;

    const-string/jumbo v1, "ANDROID_SERIAL"

    const/4 v2, 0x5

    const/16 v3, 0x66

    invoke-direct {v0, v1, v2, v3}, Lc/a/a/a/a/b/o$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lc/a/a/a/a/b/o$a;->f:Lc/a/a/a/a/b/o$a;

    .line 64
    new-instance v0, Lc/a/a/a/a/b/o$a;

    const-string/jumbo v1, "ANDROID_ADVERTISING_ID"

    const/4 v2, 0x6

    const/16 v3, 0x67

    invoke-direct {v0, v1, v2, v3}, Lc/a/a/a/a/b/o$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lc/a/a/a/a/b/o$a;->g:Lc/a/a/a/a/b/o$a;

    .line 54
    const/4 v0, 0x7

    new-array v0, v0, [Lc/a/a/a/a/b/o$a;

    sget-object v1, Lc/a/a/a/a/b/o$a;->a:Lc/a/a/a/a/b/o$a;

    aput-object v1, v0, v6

    sget-object v1, Lc/a/a/a/a/b/o$a;->b:Lc/a/a/a/a/b/o$a;

    aput-object v1, v0, v4

    sget-object v1, Lc/a/a/a/a/b/o$a;->c:Lc/a/a/a/a/b/o$a;

    aput-object v1, v0, v5

    sget-object v1, Lc/a/a/a/a/b/o$a;->d:Lc/a/a/a/a/b/o$a;

    aput-object v1, v0, v7

    sget-object v1, Lc/a/a/a/a/b/o$a;->e:Lc/a/a/a/a/b/o$a;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lc/a/a/a/a/b/o$a;->f:Lc/a/a/a/a/b/o$a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lc/a/a/a/a/b/o$a;->g:Lc/a/a/a/a/b/o$a;

    aput-object v2, v0, v1

    sput-object v0, Lc/a/a/a/a/b/o$a;->i:[Lc/a/a/a/a/b/o$a;

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
    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 69
    iput p3, p0, Lc/a/a/a/a/b/o$a;->h:I

    .line 70
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lc/a/a/a/a/b/o$a;
    .locals 1

    .prologue
    .line 54
    const-class v0, Lc/a/a/a/a/b/o$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lc/a/a/a/a/b/o$a;

    return-object v0
.end method

.method public static values()[Lc/a/a/a/a/b/o$a;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lc/a/a/a/a/b/o$a;->i:[Lc/a/a/a/a/b/o$a;

    invoke-virtual {v0}, [Lc/a/a/a/a/b/o$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc/a/a/a/a/b/o$a;

    return-object v0
.end method
